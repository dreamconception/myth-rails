require 'test_helper'
require 'rails/generators/myth/assets/assets_generator'

class AssetGeneratorTest < Rails::Generators::TestCase
  tests Myth::Generators::AssetsGenerator

  destination File.expand_path("../tmp", __FILE__)
  setup :prepare_destination

  def test_assets
    run_generator %w(posts)
    assert_no_file "app/assets/stylesheets/posts.css"
    assert_file "app/assets/stylesheets/posts.css.myth"
  end
end
