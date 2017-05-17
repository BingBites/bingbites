class HomeController < ApplicationController
  def index
    redirect_to eateries_path if current_user
  end
  
 

end
