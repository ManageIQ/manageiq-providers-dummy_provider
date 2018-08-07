class ManageIQ::Providers::DummyProvider::Inventory::Parser::TargetCollection < ManageIQ::Providers::DummyProvider::Inventory::Parser
  def parse
    vms
  end

  def vms
    collector.vms.each do |vm|
      flavor = persister.flavors.lazy_find(vm["instance_type"])

      persister.vms.build(
        :name     => vm["name"],
        :ems_ref  => vm["uuid"],
        :uid_ems  => vm["uuid"],
        :vendor   => "unknown",
        :location => "nowhere",
        :flavor   => flavor,
      )
    end
  end
end
