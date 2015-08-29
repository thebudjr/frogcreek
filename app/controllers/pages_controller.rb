class PagesController < ApplicationController
  def home
  	if current_user
  		redirect_to pictures_path
  	end
  end
end
