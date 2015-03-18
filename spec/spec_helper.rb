$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'minitest/autorun'
require 'active_support/deprecation'
require 'view_models-rails'

ActiveSupport::Deprecation.silenced = true
