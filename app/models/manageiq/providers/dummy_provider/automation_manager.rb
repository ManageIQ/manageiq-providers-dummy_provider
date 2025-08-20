class ManageIQ::Providers::DummyProvider::AutomationManager < ManageIQ::Providers::AutomationManager
  def self.ems_type
    @ems_type ||= "dummy_provider_automation".freeze
  end

  def self.description
    @description ||= "Dummy Provider Automation".freeze
  end
end
