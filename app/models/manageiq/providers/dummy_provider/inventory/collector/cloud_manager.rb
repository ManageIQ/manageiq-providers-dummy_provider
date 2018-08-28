class ManageIQ::Providers::DummyProvider::Inventory::Collector::CloudManager < ManageIQ::Providers::DummyProvider::Inventory::Collector
  def flavors
    [
      {
        "name"   => "micro",
        "cpus"   => 1,
        "memory" => 128.megabytes,
      },
    ]
  end

  def vms
    [
      {
        "name"          => "vm1",
        "uuid"          => "543b7632-75c9-41c8-b507-5d78404b22f4",
        "instance_type" => "micro",
      },
    ]
  end
end
