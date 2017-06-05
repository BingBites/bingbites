class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  helper_method :current_user

  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def redirecting_action
    observable_redirect_to('https://software-part-2-vaibhavacharya.c9users.io/eateries')
  end
  
  def integration_test?
    Rails.env.test? && defined?(Cucumber::Rails)
  end

  def redirect_to_twitter_preapproval(key)
  redirect_to URI.encode("#{Rails.configuration.twitter.preapproval_link}#{key}") 
  end

  def observable_redirect_to(url)
    if integration_test?
      render :text => "If this wasn't an integration test, you'd be redirected to: #{url}"
    else
      redirect_to url
    end
  end

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
  end


end
