class ManageIQ::Providers::DummyProvider::InfraManager < ManageIQ::Providers::InfraManager
  def self.ems_type
    @ems_type ||= "dummy_provider_infra".freeze
  end

  def self.description
    @description ||= "Dummy Provider Infra".freeze
  end
end
