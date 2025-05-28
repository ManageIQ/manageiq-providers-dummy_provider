# manageiq-providers-dummy_provider

[![Gem Version](https://badge.fury.io/rb/manageiq-providers-dummy_provider.svg)](http://badge.fury.io/rb/manageiq-providers-dummy_provider)
[![CI](https://github.com/ManageIQ/manageiq-providers-dummy_provider/actions/workflows/ci.yaml/badge.svg)](https://github.com/ManageIQ/manageiq-providers-dummy_provider/actions/workflows/ci.yaml)
[![Code Climate](https://codeclimate.com/github/ManageIQ/manageiq-providers-dummy_provider.svg)](https://codeclimate.com/github/ManageIQ/manageiq-providers-dummy_provider)
[![Test Coverage](https://codeclimate.com/github/ManageIQ/manageiq-providers-dummy_provider/badges/coverage.svg)](https://codeclimate.com/github/ManageIQ/manageiq-providers-dummy_provider/coverage)

[![Chat](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/ManageIQ/manageiq-providers-dummy_provider?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)
[![Translate](https://img.shields.io/badge/translate-zanata-blue.svg)](https://translate.zanata.org/zanata/project/view/manageiq-providers-dummy_provider)

ManageIQ plugin for the DummyProvider provider.

## Development

See the section on pluggable providers in the [ManageIQ Developer Setup](http://manageiq.org/docs/guides/developer_setup)

For quick local setup run `bin/setup`, which will clone the core ManageIQ repository under the *spec* directory and setup necessary config files. If you have already cloned it, you can run `bin/update` to bring the core ManageIQ code up to date.

## License

The gem is available as open source under the terms of the [Apache License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

ems = ManageIQ::Providers::DummyProvider::CloudManager.create!(:name => "dummy", :hostname => "localhost", :zone_id => Zone.default_zone.id)
ems.update_authentication(:default => {:userid => "user", :password => "pw"})
ems.authentication_check

ems = ManageIQ::Providers::DummyProvider::CloudManager.first
EmsRefresh.refresh(ems)

Vm.first.perf_capture "realtime"
Vm.first.metrics
