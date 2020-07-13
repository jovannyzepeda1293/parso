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


  def data
    data = [['Sunday',15339], ['Monday',21345], ['Tuesday', 18483], ['Wednesday', 24003], ['Thrusday',23489], ['Friday',24092], ['Sunday',1203]]
    render json: {
      success: true,
      data: data
    }
  end
end
