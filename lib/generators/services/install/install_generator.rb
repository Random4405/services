module Services
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      def self.source_root
        @source_root ||= File.expand_path(File.join(File.dirname(__FILE__), 'templates'))
      end

      def copy_initializer_file
        copy_file "service.rb", "app/services/service.rb"
      end
    end
  end
end
