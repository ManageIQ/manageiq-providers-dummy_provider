class ManageIQ::Providers::DummyProvider::Inventory::Parser < ManagerRefresh::Inventory::Parser
  require_nested :CloudManager

  include Vmdb::Logging
end
