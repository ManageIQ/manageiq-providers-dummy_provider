module ManageIQ
  module Providers
    module DummyProvider
      class Engine < ::Rails::Engine
        isolate_namespace ManageIQ::Providers::DummyProvider

        config.autoload_paths << root.join('lib').to_s

        def self.vmdb_plugin?
          true
        end

        def self.plugin_name
          _('Dummy Provider')
        end

        def self.init_loggers
          $dummy_log ||= Vmdb::Loggers.create_logger("dummy.log")
        end

        def self.apply_logger_config(config)
          Vmdb::Loggers.apply_config_value(config, $dummy_log, :level_dummy)
        end
      end
    end
  end
end
