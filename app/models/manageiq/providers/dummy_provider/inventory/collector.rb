class ManageIQ::Providers::DummyProvider::Inventory::Collector < ManagerRefresh::Inventory::Collector
  require_nested :CloudManager
end
