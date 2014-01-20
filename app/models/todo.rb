class Todo < ActiveRecord::Base
attr_accessible :description, :name

belongs_to :user

	validates :description, length: { maximum: 20 }
	
end