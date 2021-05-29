require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'Suite test for validate correct responses in home controller methods' do
    context '#locations' do
      it 'should return all points used for google maps' do
        get :locations

        data = JSON.parse(response.body)

        expect(response).to have_http_status(200)
        expect(data.keys).to eql %w[success points]
        expect(data['points']).to eql \
          [
            { 'lat' => 25.774, 'lng' => -80.19 },
            { 'lat' => 18.466, 'lng' => -66.118 },
            { 'lat' => 32.321, 'lng' => -64.757 }
          ]
      end
    end

    context '#data' do
      it 'should return all data for create the chart' do
        get :data

        data = JSON.parse(response.body)

        expect(response).to have_http_status(200)
        expect(data.keys).to eql %w[success data]
        expect(data['data']).to eql \
          [
            ['Sunday', 15_339],
            ['Monday', 21_345],
            ['Tuesday', 18_483],
            ['Wednesday', 24_003],
            ['Thrusday', 23_489],
            ['Friday', 24_092],
            ['Sunday', 1_203]
          ]
      end
    end
  end
end
