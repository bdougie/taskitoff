class CreateTodo < ActiveRecord::Migration
  def change
  	create_table :todos do |t|
  		t.string :description
  		t.string :name

  		t.timestamps 
  	end
  end
end
