source "http://rubygems.org"

if ENV.key?('PUPPET_VERSION')
  puppetversion = "= #{ENV['PUPPET_VERSION']}"
else
  puppetversion = ['~> 2.7']
end

gem "rake"
gem "puppet", puppetversion
gem "puppet-lint"
gem "rspec-puppet"
gem "rspec-system-puppet"
gem "puppetlabs_spec_helper"
gem "travis"
gem "travis-lint"
gem "puppet-syntax"
