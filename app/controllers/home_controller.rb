class HomeController < ApplicationController
  def index
    logger.info "Get index"
  end

  def locations
    render json: {
      success: true, points: google_map_points
    }, status: :ok
  end


  def data
    data = [['Sunday',15339], ['Monday',21345], ['Tuesday', 18483], ['Wednesday', 24003], ['Thrusday',23489], ['Friday',24092], ['Sunday',1203]]
    render json: {
      success: true,
      data: data
    }
  end

  private
  def google_map_points
    [
      { lat: 25.774, lng: -80.19 },
      { lat: 18.466, lng: -66.118 },
      { lat: 32.321, lng: -64.757 }
    ]
  end
end
