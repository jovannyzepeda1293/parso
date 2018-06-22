class HomeController < ApplicationController
  def index
  end

  def locations
    points = [
      { lat: 25.774, lng: -80.19 },
      { lat: 18.466, lng: -66.118 },
      { lat: 32.321, lng: -64.757 }
    ]
    render json: {
      success: true,
      points: points
    },status: :ok
  end
end
