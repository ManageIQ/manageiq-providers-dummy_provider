class ManageIQ::Providers::DummyProvider::Inventory::Parser < ManageIQ::Providers::Inventory::Parser
  require_nested :CloudManager

  include Vmdb::Logging
end
