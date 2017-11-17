module Services
  class ServicesGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)

    def copy_initializer_file
      template 'service.rb', "app/services/services/#{file_name}.rb"
    end
  end
end
