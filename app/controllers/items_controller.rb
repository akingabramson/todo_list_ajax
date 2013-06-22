class ItemsController < ApplicationController
  def create
    @list = TodoList.find(params[:id])
    @item = @list.todo_items.build(params[:item])
    @item.completed = false
    if @item.save
      render :json => @item.to_json.html_safe
    else
      render :json => {"error" => "error"}# render error
    end

  end
end
