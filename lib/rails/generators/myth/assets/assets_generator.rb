require "rails/generators/named_base"

module Myth
  module Generators
    class AssetsGenerator < ::Rails::Generators::NamedBase
      source_root File.expand_path("../templates", __FILE__)

      def copy_myth
        template "stylesheet.css.myth", File.join('app/assets/stylesheets', class_path, "#{file_name}.css.myth")
      end
    end
  end
end
