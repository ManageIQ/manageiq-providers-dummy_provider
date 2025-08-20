class ManageIQ::Providers::DummyProvider::StorageManager < ManageIQ::Providers::StorageManager
  def self.ems_type
    @ems_type ||= "dummy_provider_storage".freeze
  end

  def self.description
    @description ||= "Dummy Provider Storage".freeze
  end
end
