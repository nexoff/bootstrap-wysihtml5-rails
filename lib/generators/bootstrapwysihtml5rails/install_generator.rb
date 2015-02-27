require 'rails/generators/base'

module Bootstrapwysihtml5rails
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      desc "Creates a BootstrapWysihtml5Rails initializer and copy locale files to your application."
      def copy_initializer
        template "bootstrap-wysihtml5-rails.rb", "config/initializers/bootstrap-wysihtml5-rails.rb"
      end
    end
  end
end