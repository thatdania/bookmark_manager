require 'capybara'
require 'capybara/rspec'
require 'rspec'
require File.join(File.dirname(File.absolute_path(__FILE__)),
                  '..', 'app', 'app.rb')

ENV['RACK_ENV'] = 'test'
Capybara.app = App
