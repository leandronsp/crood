# frozen_string_literal: true

require 'chespirito'

Dir['./app/**/*.rb'].sort.each { |file| require file }

module Crood
  def self.application
    Chespirito::App.configure do |app|
      app.register_route('GET', '/',        [HomeController, :index])
      app.register_route('POST', '/login',  [SessionsController, :create])
      app.register_route('POST', '/logout', [SessionsController, :destroy])
    end
  end
end
