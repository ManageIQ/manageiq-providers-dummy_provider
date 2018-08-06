class ManageIQ::Providers::DummyProvider::Inventory < ManagerRefresh::Inventory
  require_nested :Collector
  require_nested :Parser
  require_nested :Persister
end
