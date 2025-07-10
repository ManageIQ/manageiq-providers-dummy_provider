class ManageIQ::Providers::DummyProvider::CloudManager::RefreshWorker < MiqEmsRefreshWorker
  def self.ems_class
    parent
  end
end
