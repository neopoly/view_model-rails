namespace :'view_model' do

  def copy_from_template(path)
    templates = File.expand_path('../share/', __FILE__)
    rails     = Rails.root.to_s
    sh "mkdir -p #{rails}/#{File.dirname path}"
    cp "#{templates}/#{path}", "#{rails}/#{path}"
  end

  desc 'Build application base view model'
  task :setup do
    copy_from_template 'app/view_models/abstract_view_model.rb'
  end
end
