class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

  def home
  	if current_user
  		redirect_to pictures_path
  	end
  end

  def dashboard
  	@pictures = Picture.all
  end
end
