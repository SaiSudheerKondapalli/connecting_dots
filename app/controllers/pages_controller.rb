class PagesController < ApplicationController
  def home
  end

  # back-end code for pages/profile
    def profile
      # grab the username from the URL as :id
      if (User.find_by_username(params[:id]))
        @username = params[:id]
      else
        # redirect to 404 (root for now)
        redirect_to root_path, :notice=> "User not found!"
      end
    end

  def index
  end

  def explore
  end
end
