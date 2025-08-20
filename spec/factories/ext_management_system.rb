FactoryBot.define do
  factory :ems_dummy_infra,
          :aliases => ["manageiq/providers/dummy_provider/infra_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::InfraManager",
          :parent  => :ems_infra

  factory :ems_dummy_cloud,
          :aliases => ["manageiq/providers/dummy_provider/cloud_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::CloudManager",
          :parent  => :ems_cloud

  factory :ems_dummy_container,
          :aliases => ["manageiq/providers/dummy_provider/container_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::ContainerManager",
          :parent  => :ems_container

  factory :ems_dummy_network,
          :aliases => ["manageiq/providers/dummy_provider/network_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::NetworkManager",
          :parent  => :ems_network

  factory :ems_dummy_storage,
          :aliases => ["manageiq/providers/dummy_provider/storage_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::StorageManager",
          :parent  => :ems_storage

  factory :ems_dummy_physical_infra,
          :aliases => ["manageiq/providers/dummy_provider/physical_infra_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::PhysicalInfraManager",
          :parent  => :ems_physical_infra

  factory :ems_dummy_automation,
          :aliases => ["manageiq/providers/dummy_provider/automation_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::AutomationManager",
          :parent  => :automation_manager

  factory :ems_dummy_configuration,
          :aliases => ["manageiq/providers/dummy_provider/configuration_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::ConfigurationManager",
          :parent  => :configuration_manager

  factory :ems_dummy_provisioning,
          :aliases => ["manageiq/providers/dummy_provider/provisioning_manager"],
          :class   => "ManageIQ::Providers::DummyProvider::ProvisioningManager",
          :parent  => :provisioning_manager
end
