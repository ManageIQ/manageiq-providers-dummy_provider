class ManageIQ::Providers::DummyProvider::PhysicalInfraManager < ManageIQ::Providers::PhysicalInfraManager
  def self.ems_type
    @ems_type ||= "dummy_provider_physical_infra".freeze
  end

  def self.description
    @description ||= "Dummy Provider Physical Infrastructure".freeze
  end
end
