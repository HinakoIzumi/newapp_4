class StaticPagesController < ApplicationController
  def home
      #if logged_in?
      #   @micropost  = current_user.microposts.build
      #   @feed_items = current_user.feed.paginate(page: params[:page])
      #end
      if logged_in?
          @micropost  = current_user.microposts.build
          if params[:tag]
              @feed_items = Micropost.tagged_with(params[:tag]).paginate(page: params[:page])
          else
              @feed_items = current_user.feed.paginate(page: params[:page])
          end
      end
  end

  def help
  end
  
  def about
  end
  
  def contact
  end
  
end
