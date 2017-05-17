require 'rails_helper'

RSpec.describe CallbacksController, type: :controller do
  let(:user) { FactoryGirl.create(:user) }

  before(:each) do
    twitter_auth_hash
    request.env['devise.mapping'] = Devise.mappings[:user]
  end

  after(:each) do
    OmniAuth.config.mock_auth[:twitter] = nil
  end

  describe 'GET twitter #callback' do
    it 'expects omniauth.auth to be be_truthy' do
      request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
      get :twitter 
      expect(request.env['omniauth.auth']).to be_truthy
    end

    it 'completes the registration process successfully' do
      request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
      get :twitter
      expect(response).to redirect_to eateries
    end

    it 'creates an oauth_account record' do
      request.env['omniauth.auth'] = OmniAuth.config.mock_auth[:twitter]
      expect{
        get :twitter
      }.to change { Account.count }.by(1)
    end
  end
end
