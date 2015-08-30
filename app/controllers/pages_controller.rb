class PagesController < ApplicationController
	before_action :authenticate_user!, only: [:dashboard]

  def home
  	@pictures = Picture.last(4)
  end

  def dashboard
  	@pictures = Picture.all
  end
end
