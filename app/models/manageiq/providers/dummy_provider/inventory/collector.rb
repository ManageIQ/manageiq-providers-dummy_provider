class ManageIQ::Providers::DummyProvider::Inventory::Collector < ManageIQ::Providers::Inventory::Collector
  require_nested :CloudManager
end
