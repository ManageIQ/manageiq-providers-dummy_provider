class ManageIQ::Providers::DummyProvider::CloudManager::Refresher < ManageIQ::Providers::BaseManager::Refresher
  include ::EmsRefresh::Refreshers::EmsRefresherMixin
end
