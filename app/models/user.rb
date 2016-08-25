class User < ActiveRecord::Base
  has_many :articles
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]
  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.provider           = auth.provider
	    user.uid                = auth.uid
	    user.email              = auth.info.email
      user.name               = auth.info.name
      user.birthday           = auth.extra.raw_info.birthday
      user.gender             = auth.extra.raw_info.gender
      user.link               = auth.extra.raw_info.link
	    user.password           = Devise.friendly_token[0,20]
    end
  end
end
