class TodoListsController < ApplicationController
  def index
  end

  def create
    @list = TodoList.new(params[:list])
    if @list.save
      render :json => @list.to_json(:include => :todo_items)
    else
    end
  end

end
