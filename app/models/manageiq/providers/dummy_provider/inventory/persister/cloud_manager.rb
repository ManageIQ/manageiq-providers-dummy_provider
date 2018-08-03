class ManageIQ::Providers::DummyProvider::Inventory::Persister::CloudManager < ManageIQ::Providers::DummyProvider::Inventory::Persister
  def initialize_inventory_collections
    add_collection(cloud, :vms)
  end
end
