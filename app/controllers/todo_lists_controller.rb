class TodoListsController < ApplicationController
  def index
    @lists = TodoList.includes(:todo_items).all
    @list = TodoList.new
  end

  def create
    @list = TodoList.new(params[:todo_list])
    if @list.save
      render :json => @list.to_json.html_safe
    else
    end
  end

end
