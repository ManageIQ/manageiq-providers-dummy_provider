class ManageIQ::Providers::DummyProvider::CloudManager::RefreshWorker < MiqEmsRefreshWorker
  def self.ems_class
    module_parent
  end
end
