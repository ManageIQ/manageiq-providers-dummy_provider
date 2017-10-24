module ManageIQ
  module Providers
    module DummyProvider
      class Engine < ::Rails::Engine
        isolate_namespace ManageIQ::Providers::DummyProvider
      end
    end
  end
end
