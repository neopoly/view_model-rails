$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

if ENV['CODECLIMATE_REPO_TOKEN']
  require 'codeclimate-test-reporter'
  CodeClimate::TestReporter.start
end

if ENV['coverage']
  require 'simplecov'
  SimpleCov.start
end

require 'minitest/autorun'
require 'active_support/deprecation'
require 'view_model-rails'

ActiveSupport::Deprecation.silenced = true
