require 'test_helper'
require 'rails/generators/rails/scaffold/scaffold_generator'
require 'rails/generators/myth/assets/assets_generator'

class ScaffoldGeneratorTest < Rails::Generators::TestCase
  tests Rails::Generators::ScaffoldGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup do
    prepare_destination
    copy_routes
  end

  def test_assets
    run_generator %w(posts --stylesheet-engine=myth --orm=false)
    assert_no_file "app/assets/stylesheets/posts.css"
    assert_file "app/assets/stylesheets/posts.css.myth"
  end
end