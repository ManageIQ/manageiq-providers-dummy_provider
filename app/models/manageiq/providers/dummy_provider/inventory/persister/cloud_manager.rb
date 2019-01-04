class ManageIQ::Providers::DummyProvider::Inventory::Persister::CloudManager < ManageIQ::Providers::DummyProvider::Inventory::Persister
  def initialize_inventory_collections
    add_collection(cloud, :vms)
    add_collection(cloud, :flavors)
  end
end
