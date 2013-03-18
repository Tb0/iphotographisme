# -*- encoding : utf-8 -*-
class PicturesController < ApplicationController

	def index
		@pictures = Picture.order("created_at").page(params[:page]).per_page(20)
		@categories = Category.all
	end

end
