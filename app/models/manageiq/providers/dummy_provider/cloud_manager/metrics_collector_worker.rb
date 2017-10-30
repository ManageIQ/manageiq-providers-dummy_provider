class ManageIQ::Providers::DummyProvider::CloudManager::MetricsCollectorWorker < ManageIQ::Providers::BaseManager::MetricsCollectorWorker
  require_nested :Runner

  self.default_queue_name = "dummy_provider"

  def friendly_name
    @friendly_name ||= "C&U Metrics Collector for DummyProvider"
  end
end
