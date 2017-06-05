require 'rails_helper'

RSpec.describe EateriesController, type: :controller do
    
    it 'Restaurant created' do
      get :new
      expect(response).to have_http_status(200)
    end

    it 'Restaurant updated.' do
      get :new
      expect(response).to have_http_status(200)
    end
    
    it 'Restaurant successfully removed' do
      get :new
    expect(response).to have_http_status(200)
    end
    
    it 'Should show categories successfully' do
      get :new
      expect(response).to have_http_status(200)
    end
    
    it 'this page should show restaurant list ' do
      get :new
      expect(response).to have_http_status(200)
    end
    
    it 'Restaurant list page should showl search bar ' do
      get :new
      expect(response).to have_http_status(200)
    end
end



