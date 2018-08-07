class ManageIQ::Providers::DummyProvider::Inventory::Persister::TargetCollection < ManageIQ::Providers::DummyProvider::Inventory::Persister
  def initialize_inventory_collections
    add_collection(cloud, :flavors)
    add_collection(cloud, :vms)
  end

  def targeted?
    true
  end

  def parent
    manager.presence
  end

  def shared_options
    {
      :parent => parent,
    }
  end
end
