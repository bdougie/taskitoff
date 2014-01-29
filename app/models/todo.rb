class Todo < ActiveRecord::Base
	attr_accessible :description, :name

	belongs_to :user

	validates :name, length: { maximum: 25 }

	scope :alive, where( 'created_at > ?', Time.now - 7.days ) 

end


