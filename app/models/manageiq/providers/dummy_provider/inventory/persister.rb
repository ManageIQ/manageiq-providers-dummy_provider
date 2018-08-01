class ManageIQ::Providers::DummyProvider::Inventory::Persister < ManagerRefresh::Inventory::Persister
  require_nested :CloudManager
end
