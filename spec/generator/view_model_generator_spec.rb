require 'spec_helper'
require 'rails/generators'
require 'generators/view_model_generator'

class ViewModelGeneratorTest < Rails::Generators::TestCase
  tests ViewModelGenerator
  destination File.expand_path('../../tmp', File.dirname(__FILE__))

  setup :prepare_destination

  test 'creates a view model' do
    run_generator %w(user_form)
    
    assert_file 'app/view_models/user_form.rb' do |model|
      assert_match(/class UserForm < AbstractViewModel/, model)
    end
  end

  test "create view model test" do
    run_generator %w(user_form)

    assert_file "test/view_models/user_form_view_model_test.rb" do |test|
      assert_match(/require 'test_helper'/, test)
      assert_match(/class UserFormViewModelTest < ActiveSupport::TestCase/, test)
    end
  end
end
