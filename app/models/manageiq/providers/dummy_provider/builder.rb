class ManageIQ::Providers::DummyProvider::Builder
  class << self
    def build_inventory(ems, target)
      case target
      when InventoryRefresh::TargetCollection
        targeted_inventory(ems, target)
      else
        cloud_manager_inventory(ems, target)
      end
    end

    private

    def cloud_manager_inventory(ems, target)
      collector_klass = ManageIQ::Providers::DummyProvider::Inventory::Collector::CloudManager
      persister_klass = ManageIQ::Providers::DummyProvider::Inventory::Persister::CloudManager
      parser_klass    = ManageIQ::Providers::DummyProvider::Inventory::Parser::CloudManager

      inventory(ems, target, collector_klass, persister_klass, [parser_klass])
    end

    def targeted_inventory(ems, target)
      collector_klass = ManageIQ::Providers::DummyProvider::Inventory::Collector::TargetCollection
      persister_klass = ManageIQ::Providers::DummyProvider::Inventory::Persister::TargetCollection
      parser_klass    = ManageIQ::Providers::DummyProvider::Inventory::Parser::CloudManager

      inventory(ems, target, collector_klass, persister_klass, [parser_klass])
    end

    def inventory(manager, raw_target, collector_class, persister_class, parser_classes)
      collector = collector_class.new(manager, raw_target)
      persister = persister_class.new(manager, raw_target)

      ::ManageIQ::Providers::DummyProvider::Inventory.new(persister, collector, parser_classes.map(&:new))
    end
  end
end
