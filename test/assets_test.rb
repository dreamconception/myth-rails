require 'test_helper'
require 'myth-rails'

class AssetsTest < ActiveSupport::TestCase
  def setup
    require "rails"
    require "action_controller/railtie"
    require "sprockets/railtie"

    @app = Class.new(Rails::Application)
    @app.config.eager_load = false
    @app.config.active_support.deprecation = :stderr
    @app.config.assets.enabled = true
    @app.config.assets.cache_store = [ :file_store, "#{tmp_path}/cache" ]
    @app.paths["log"] = "#{tmp_path}/log/test.log"
    @app.initialize!
  end

  def teardown
    FileUtils.rm_rf "#{tmp_path}/cache"
    FileUtils.rm_rf "#{tmp_path}/log"
    File.delete "#{tmp_path}/myth.js"
  end

  test "myth.js is included in Sprockets environment" do
    @app.assets["myth"].write_to("#{tmp_path}/myth.js")

    assert_match "/lib/assets/stylesheets/myth.css.erb", @app.assets["myth"].pathname.to_s
    assert_match "function myth", File.open("#{tmp_path}/myth.js").read
  end

  def tmp_path
    "#{File.dirname(__FILE__)}/tmp"
  end
end
