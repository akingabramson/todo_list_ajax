class ItemsController < ApplicationController
  def create
    @item = Item.new(params[:task])
    if @item.save
      render :json => @item.to_json.html_safe
    else
      # render error
    end

  end
end
