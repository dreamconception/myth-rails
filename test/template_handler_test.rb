require 'test_helper'
require 'action_controller'
require 'myth-rails'

class SiteController < ActionController::Base
  self.view_paths = File.expand_path("../support", __FILE__)
end

DummyApp = ActionDispatch::Routing::RouteSet.new
DummyApp.draw do
  get "site/index"
end

class TemplateHandlerTest < ActiveSupport::TestCase
  include Rack::Test::Methods

  def app
    @app ||= DummyApp
  end

  test "myth views are served as css" do
    get "/site/index.css"

    assert_match File.read(File.expand_path("../support", __FILE__) + "/site/expected.css"), last_response.body
  end
end
