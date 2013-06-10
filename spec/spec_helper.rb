require 'bundler'

Bundler.require :default, :development

Combustion.initialize! :active_record

require 'rspec/rails'

Rspec.configure do |config|
  config.use_transaction_fixtures = true
end
