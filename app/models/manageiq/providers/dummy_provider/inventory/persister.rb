class ManageIQ::Providers::DummyProvider::Inventory::Persister < ManageIQ::Providers::Inventory::Persister
  require_nested :CloudManager
end
