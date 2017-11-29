module Nestibutes
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    helper Nestibutes::Engine.helpers
  end
end
