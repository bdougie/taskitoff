class Todo < ActiveRecord::Base
	attr_accessible :description, :name

	belongs_to :user

	validates :description, length: { maximum: 20 }

	scope :visible_to, lambda { |user| user ? scoped : where(public: false) }

	# scope :alive { where('') }

end


# def index
# 	@todos = Todo.alive