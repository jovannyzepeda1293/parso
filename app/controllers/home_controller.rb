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
    render json: {
      success: true,
      data: chart_data
    }
  end

  private

  def chart_data
    [
      ['Sunday', 15_339], ['Monday', 21_345], ['Tuesday', 18_483],
      ['Wednesday', 24_003], ['Thrusday', 23_489], ['Friday', 24_092],
      ['Sunday', 1_203]
    ]
  end

  def google_map_points
    [
      { lat: 25.774, lng: -80.19 },
      { lat: 18.466, lng: -66.118 },
      { lat: 32.321, lng: -64.757 }
    ]
  end
end
