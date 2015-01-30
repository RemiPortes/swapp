class User < ActiveRecord::Base
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider = auth.provider 
      user.uid      = auth.uid
      user.name     = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      access_token = auth['token']
      facebook = self::Facebook::API.new(access_token)
      facebook.get_object("me?fields=name,picture")
      user.save
    end

    # where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
    #   user.provider = auth.provider
    #   user.uid = auth.uid
    #   user.name = auth.info.name
    #   user.oauth_token = auth.credentials.token
    #   user.oauth_expires_at = Time.at(auth.credentials.expires_at)
    #   user.save!
    # end
  end
end