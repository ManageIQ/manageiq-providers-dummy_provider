class ManageIQ::Providers::DummyProvider::Inventory::Parser::CloudManager < ManageIQ::Providers::DummyProvider::Inventory::Parser
  def parse
    flavors
    vms
  end

  def flavors
    collector.flavors.each do |flavor|
      persister.flavors.build(
        :name            => flavor["name"],
        :ems_ref         => flavor["name"],
        :cpu_total_cores => flavor["cpus"],
        :memory          => flavor["memory"],
      )
    end
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
