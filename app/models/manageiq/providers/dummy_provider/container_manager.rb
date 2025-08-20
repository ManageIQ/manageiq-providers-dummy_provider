class ManageIQ::Providers::DummyProvider::ContainerManager < ManageIQ::Providers::ContainerManager
  def self.ems_type
    @ems_type ||= "dummy_provider_container".freeze
  end

  def self.description
    @description ||= "Dummy Provider Container".freeze
  end
end
