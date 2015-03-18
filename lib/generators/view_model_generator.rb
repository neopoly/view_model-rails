require 'rails/generators'

class ViewModelGenerator < Rails::Generators::NamedBase

  source_root File.expand_path('../templates', __FILE__)

  def create_view_model_file
    path = "app/view_models/#{file_name}.rb"

    if FileTest.exists? path
      raise FileExistError, "This filename ist used by another view-model:#{path}"
    end

    copy_file 'view_model_template.rb', path
    replace_class_name path
  end

  def create_presenter_test_file
    path = "test/view_models/#{file_name}_test.rb"
    if FileTest.exists?path
      raise FileExistError, "This filename ist used by another view-model test:#{path}"
    end

    copy_file "view_model_test_template.rb", path
    replace_class_name path
  end

  private

  def replace_class_name path
    gsub_file path, '-classname-' , "#{class_name}"
  end

end

class FileExistError < StandardError; end
