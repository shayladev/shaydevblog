class HomePageController < ApplicationController
  def index
    @featured_post = PostAdmin.last
    @post_admins = PostAdmin.limit(4)
    @user = current_user
  end
end
