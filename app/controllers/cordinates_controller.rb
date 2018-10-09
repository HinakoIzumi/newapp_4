class CordinatesController < ApplicationController
  def name
      @cordinate = Cordinate.new(item1: params["item1"])
      @feed_items = current_user.feed.paginate(page: params[:page])
      @cordinate.save
  end
  
  
end
