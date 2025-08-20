class ManageIQ::Providers::DummyProvider::InfraManager::Vm < ManageIQ::Providers::InfraManager::Vm
  supports :snapshots do
    unsupported_reason_add(:snapshots, _("Snapshots are not supported for this VM")) unless supports_snapshots?
  end

  def supports_snapshots?
    # Implement snapshot support check
    false
  end

  def provider_object(connection = nil)
    connection ||= ext_management_system.connect
    # Return the provider object
    nil
  end

  def raw_start
    with_provider_object(&:start)
    # Update the power state
    update!(:raw_power_state => "on")
  end

  def raw_stop
    with_provider_object(&:stop)
    # Update the power state
    update!(:raw_power_state => "off")
  end

  def raw_suspend
    with_provider_object(&:suspend)
    # Update the power state
    update!(:raw_power_state => "suspended")
  end

  def raw_pause
    with_provider_object(&:pause)
    # Update the power state
    update!(:raw_power_state => "paused")
  end

  def raw_reset
    with_provider_object(&:reset)
    # Update the power state
    update!(:raw_power_state => "on")
  end

  def raw_reboot_guest
    with_provider_object(&:reboot_guest)
    # Update the power state
    update!(:raw_power_state => "on")
  end

  def raw_shutdown_guest
    with_provider_object(&:shutdown_guest)
    # Update the power state
    update!(:raw_power_state => "off")
  end

  def raw_standby_guest
    with_provider_object(&:standby_guest)
    # Update the power state
    update!(:raw_power_state => "standby")
  end

  # Helper method for the provider_object
  def with_provider_object
    obj = provider_object
    yield(obj) if block_given?
  rescue => err
    _log.error("#{err}")
    raise MiqException::MiqVmError, err.to_s
  end
end
