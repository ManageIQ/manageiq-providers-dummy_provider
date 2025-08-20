class ManageIQ::Providers::DummyProvider::ProvisioningManager < ManageIQ::Providers::ProvisioningManager
  def self.ems_type
    @ems_type ||= "dummy_provider_provisioning".freeze
  end

  def self.description
    @description ||= "Dummy Provider Provisioning".freeze
  end
end
