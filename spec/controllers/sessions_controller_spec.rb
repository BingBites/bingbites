require 'rails_helper'

describe SessionsController , :type => :controller do
    describe "POST Create" do
    
      before do
        User.create(name: 'debashish', 
                    email: 'debashish@gmail.com',
                    )
      end
      
       it 'should login successfully only if both username and password are valid and redirect_to Homepage' do
        post :create, session: {email: 'debashish@gmail.com'}
        expect(response).to redirect_to eateries_path
      end
      
    
      it 'should not login successfully if username is invalid and redirect_to to login page' do
        post :create, session: {email: 'slkjdfoij@gmail.com', password: '123456'}
        expect(response).to redirect_to eateries_path
      end
      
      
  end
  end