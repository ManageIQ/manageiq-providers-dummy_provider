class ManageIQ::Providers::DummyProvider::NetworkManager < ManageIQ::Providers::NetworkManager
  def self.ems_type
    @ems_type ||= "dummy_provider_network".freeze
  end

  def self.description
    @description ||= "Dummy Provider Network".freeze
  end
end
