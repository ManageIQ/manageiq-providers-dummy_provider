class ManageIQ::Providers::DummyProvider::ConfigurationManager < ManageIQ::Providers::ConfigurationManager
  def self.ems_type
    @ems_type ||= "dummy_provider_configuration".freeze
  end

  def self.description
    @description ||= "Dummy Provider Configuration".freeze
  end
end
