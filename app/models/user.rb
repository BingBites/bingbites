class User < ActiveRecord::Base
  class << self
    def from_omniauth(auth_hash)
      user = find_or_create_by(uid: auth_hash['uid'], provider: auth_hash['provider'])
      user.name = auth_hash['info']['name']
      user.location = auth_hash['info']['location']
      user.image_url = auth_hash['info']['image']
      user.url = auth_hash['info']['urls']['Twitter']
      user.save!
      user
    end
  end
  
  def self.find_for_twitter_oauth(omniauth)
      authentication = UserToken.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
      if authentication && authentication.user
        authentication.user
      else
        User.new
      end
      
  def super_admin?
    role_type 'SUPERADMIN'
  end

  def eatery_admin?
    role_type 'EATERYADMIN'
  end

  private

  def role_type(role_type)
    return true if role.eql? role_type
    false
  end
  end

end