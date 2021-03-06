class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable,
	       :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :created_at, :uid, :provider
  # attr_accessible :title, :body

  has_many :todos, dependent: :destroy

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
  	user = User.where(:provider => auth.provider, :uid => auth.uid).first
  	unless user
  		pass = Devise.friendly_token[0,20]
  		user = User.new(name: auth.extra.raw_info.name,
  									provide: auth.provider,
  									uid: auth.id,
										email: auth.info.email,
										password: pass,
										password_confirmation: pass
						  			)
  		user.skip_confirmation!
  		user.save
		end
		user
	end
  		
  	
end
