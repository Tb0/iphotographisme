# -*- encoding : utf-8 -*-
class PicturesController < ApplicationController

	def index
		if params[:category_id]
		 category  = Category.find(params[:category_id])
		 raise category
		 @pictures = category.pictures
		else
		@pictures = Picture.order("created_at").page(params[:page]).per_page(20)
		end
	end

end
