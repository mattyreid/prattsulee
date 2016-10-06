# The pages controller contains all the code for any page inside of /pages
class PagesController < ApplicationController
  
  # back-end code for pages/index
  def index
  end
  
  # back-end code for pages/home
  def home
  end
  
  # back-end code for pages/profile
  def profile
  end
  
  # back-end code for pages/explore
  def explore
  end
  
  # back-end code for pages/search
  def search
  end 
  
  # back-end code for pages/search
  def search_results
    @tweets = Tweet.where("user_id in (?) OR user_id = ?", current_user.friend_ids, current_user).paginate(page: params[:page]).order('created_at DESC')
    @tweets = Tweet.search(params[:search])
  end
end 

