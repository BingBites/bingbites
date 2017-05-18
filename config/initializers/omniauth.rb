Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET'],  {
    scope: 'email,public_profile,user_location,user_birthday,user_about_me',
    :secure_image_url => 'true',
    :image_size => 'original',
    :authorize_params => {
      :lang => 'en'
    },
    info_fields: 'name,email'
  }
end
