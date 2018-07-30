class ManageIQ::Providers::DummyProvider::CloudManager::Vm < ManageIQ::Providers::CloudManager::Vm

  def provider_object(connection = nil)
    connection ||= ext_management_system.connect
    # find vm instance via connection and return it
    # connection.find_instance(ems_ref)
    # but we return just an object for now
    OpenStruct.new
  end

  def raw_start
    with_provider_object(&:start)
    # Temporarily update state for quick UI response until refresh comes along
    update_attributes!(:raw_power_state => "on")
  end

  def dummy
    raw_dummy
  end

  def raw_dummy
    env_vars = {
      "PROVIDER_USERID"   => "root",
      "PROVIDER_PASSWORD" => "password",
    }
    extra_vars = {
      :id   => id,
      :name => name,
    }
    playbook_path = ext_management_system.ansible_root.join("dummy.yml")

    result = Ansible::Runner.run(env_vars, extra_vars, playbook_path)
    if result.return_code != 0
      _log.error("Failed to start VM: #{result.parsed_stdout}")
    else
      _log.info("Dummied VM [#{id}] [#{name}]")
    end
  end

  def raw_stop
    with_provider_object(&:stop)
    # Temporarily update state for quick UI response until refresh comes along
    update_attributes!(:raw_power_state => "off")
  end

  def raw_pause
    with_provider_object(&:pause)
    # Temporarily update state for quick UI response until refresh comes along
    update_attributes!(:raw_power_state => "paused")
  end

  def raw_suspend
    with_provider_object(&:suspend)
    # Temporarily update state for quick UI response until refresh comes along
    update_attributes!(:raw_power_state => "suspended")
  end

  # TODO: this method could be the default in a baseclass
  def self.calculate_power_state(raw_power_state)
    # do some mapping on powerstates
    # POWER_STATES[raw_power_state.to_s] || "terminated"
    raw_power_state
  end
end
