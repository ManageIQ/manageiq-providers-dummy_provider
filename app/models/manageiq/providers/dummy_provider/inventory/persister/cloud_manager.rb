class ManageIQ::Providers::DummyProvider::Inventory::Persister::CloudManager < ManagerRefresh::Inventory::Persister
  include ManagerRefresh::Inventory::CloudManager

  has_cloud_manager_vms
end
