class TodosController < ApplicationController
  def index
  	@todos = Todo.all
  end

  def show
  	@todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(params[:todo])
    if @todo.save
      redirect_to todos_path, notice: "Todo was saved successfully. Now get to work!"
    else
      flash[:error] = "Sorry bud, but there was an error. Please try again"
      render :new
    end
  end

  def destroy
    @todo = Todo.find(params[:id])
    name = @todo.name

    if @todo.destroy
      flash[:notice] = "\"#{name}\" was deleted successfully."
      redirect_to todos_path
    else
      flash[:error] = "There was an error deleting the topic."
      redirect_to todos_path
    end
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes(params[:todo])
      redirect_to todos_path
    else
      flash[:error] = "Error saving topic. Please try again"
      render :edit
    end    
  end
end
