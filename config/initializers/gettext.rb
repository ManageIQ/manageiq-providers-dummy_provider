Vmdb::Gettext::Domains.add_domain(
  'ManageIQ_Providers_DummyProvider',
  ManageIQ::Providers::DummyProvider::Engine.root.join('locale').to_s,
  :po
)
