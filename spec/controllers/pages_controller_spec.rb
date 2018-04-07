require 'rails_helper'

describe PagesController do

  describe 'Static pages' do

    it 'should include a privacy page' do
      get :show, params: { id: :privacy }
      expect(response).to be_ok
    end

    it 'should include a conditions page' do
      get :show, params: { id: :conditions }
      expect(response).to be_ok
    end

    it 'should include a general terms page' do
      get :show, params: { id: :general_terms }
      expect(response).to be_ok
    end

    it 'should include a terms page' do
      get :show, params: { id: :census_terms }
      expect(response).to be_ok
    end

    it 'should include a accessibility page' do
      get :show, params: { id: :accessibility }
      expect(response).to be_ok
    end
  end

  describe 'More info pages' do

    it 'includes a more info page' do
      get :show, params: { id: 'help/index' }
      expect(response).to be_ok
    end

    it 'includes a how_to_use page' do
      get :show, params: { id: 'help/how_to_use/index' }
      expect(response).to be_ok
    end

    it 'includes a faq page' do
      get :show, params: { id: 'help/faq/index' }
      expect(response).to be_ok
    end

  end

  describe 'Not found pages' do

    it 'returns a 404 message' do
      get :show, params: { id: "nonExistentPage" }
      expect(response).to be_missing
    end
  end
end
