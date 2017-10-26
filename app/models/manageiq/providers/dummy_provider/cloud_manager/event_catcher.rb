class ManageIQ::Providers::DummyProvider::CloudManager::EventCatcher < ManageIQ::Providers::BaseManager::EventCatcher
  require_nested :Runner
end
