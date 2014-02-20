# Myth-Rails

Myth adapter for the Rails asset pipeline.

## Installation

    gem install myth-rails

If you are precompiling your assets (with rake assets:precompile) before run your application in production, you might want add it to the assets group to prevent the gem being required in the production environment.

    group :assets do
      gem 'myth-rails'
    end

## Usage

Stylesheet files depending on Myth should contain a `.myth` extension.

## Running tests

    $ bundle install
    $ bundle exec rake test

If you need to test against local gems, use Bundler's gem :path option in the Gemfile.

## Code Status

* [![Travis CI](https://api.travis-ci.org/dreamconception/myth-rails.png)](http://travis-ci.org/rails/myth-rails)
* [![Gem Version](https://badge.fury.io/rb/myth-rails.png)](http://badge.fury.io/rb/myth-rails)
* [![Dependencies](https://gemnasium.com/dreamconception/myth-rails.png)](https://gemnasium.com/rails/myth-rails)
