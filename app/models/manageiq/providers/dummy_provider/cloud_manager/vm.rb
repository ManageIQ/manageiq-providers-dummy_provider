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
    update!(:raw_power_state => "on")
  end

  def info
    raw_info
  end

  def raw_info
    env_vars = {
      "PROVIDER_USERID"   => "root",
      "PROVIDER_PASSWORD" => "password",
    }
    extra_vars = {
      :id     => id,
      :vmname => name,
    }

    playbook_path = ext_management_system.ansible_root.join("vm_info.yml")

    result = Ansible::Runner.run(env_vars, extra_vars, playbook_path)
    if result.return_code != 0
      _log.error("Failed to get VM info: #{result.parsed_stdout.join("\n")}")
    else
      _log.info(result.parsed_stdout.join("\n"))
    end
  end

  def long_running_playbook
    env_vars = {
      "PROVIDER_USERID"   => "root",
      "PROVIDER_PASSWORD" => "password",
    }
    extra_vars = {
      :id     => id,
      :vmname => name,
    }

    playbook_path = ext_management_system.ansible_root.join("long_running_playbook.yml")

    job = ManageIQ::Providers::AnsibleRunnerWorkflow.create_job(env_vars, extra_vars, playbook_path)
    job.signal(:start)
    job.miq_task
  end

  def raw_stop
    with_provider_object(&:stop)
    # Temporarily update state for quick UI response until refresh comes along
    update!(:raw_power_state => "off")
  end

  def raw_pause
    with_provider_object(&:pause)
    # Temporarily update state for quick UI response until refresh comes along
    update!(:raw_power_state => "paused")
  end

  def raw_suspend
    with_provider_object(&:suspend)
    # Temporarily update state for quick UI response until refresh comes along
    update!(:raw_power_state => "suspended")
  end

  # TODO: this method could be the default in a baseclass
  def self.calculate_power_state(raw_power_state)
    # do some mapping on powerstates
    # POWER_STATES[raw_power_state.to_s] || "terminated"
    raw_power_state
  end
end
