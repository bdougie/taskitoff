class Todo < ActiveRecord::Base
attr_accessible :description

	validates :description, length: { maximum: 20 }
end