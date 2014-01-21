module TodosHelper

	def time_to_self_destruct(todo)
		f = Time.now
		distance_of_time_in_words( f , todo.created_at + 7.days )
	end

end
