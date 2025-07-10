if ENV['CI']
  require 'simplecov'
  SimpleCov.start
end

Dir[Rails.root.join("spec/shared/**/*.rb")].each { |f| require f }
Dir[ManageIQ::Providers::DummyProvider::Engine.root.join("spec/support/**/*.rb")].each { |f| require f }
