class FlatsController < ApplicationController
  def index
    @flats = Flat.where(user: current_user)
  end
end
