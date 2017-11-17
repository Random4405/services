module Services
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def self.source_root
        @source_root ||= File.expand_path(
          File.join(File.dirname(__FILE__), 'templates')
        )
      end

      def copy_initializer_file
        copy_file 'service.rb', 'app/services/service.rb'
      end

      def add_autoload_path
        inject_into_file(
          'config/application.rb',
          after: "class Application < Rails::Application\n"
        ) do
          '    config.autoload_paths +=' \
          'Dir[Rails.root.join("app", "services", "**", "*.rb")]' + "\n"
        end
      end
    end
  end
end
