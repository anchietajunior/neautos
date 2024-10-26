# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @favorite_vehicles = Vehicle.favorites
  end
end
