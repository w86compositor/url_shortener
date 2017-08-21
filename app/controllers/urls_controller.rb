class UrlsController < ApplicationController
  def new
  end

  def create
  	if !params[:url].blank?
  		redirect_to root_path, notice: "Please enter a valid url"
 	else
 		@url = Bitly.client.shorten(params[:url])
    end
  end
end
