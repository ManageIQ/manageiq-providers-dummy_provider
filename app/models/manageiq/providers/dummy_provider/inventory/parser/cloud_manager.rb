class ManageIQ::Providers::DummyProvider::Inventory::Parser::CloudManager < ManageIQ::Providers::DummyProvider::Inventory::Parser
  def parse
    vms
  end

  def vms
    collector.vms.each do |vm|
      persister.vms.build(
        :name     => vm["name"],
        :ems_ref  => vm["uuid"],
        :uid_ems  => vm["uuid"],
        :vendor   => "dummy",
        :location => "nowhere",
      )
    end
  end
end
