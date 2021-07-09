# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Index system spec', type: :system do
  describe 'tests for validate if home view contains all components loaded' do
    before do
      visit '/'
    end

    it 'screen should include maps components' do
      expect(page).to have_content('Datos del mapa')
    end

    it 'screen should include charts components' do
      expect(page).to have_css('[data-react-class="LineChart"]')
    end
  end
end
