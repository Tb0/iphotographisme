# -*- encoding : utf-8 -*-
class PicturesController < ApplicationController

	def index
		if @category = Category.find_by_id(params[:category_id]) 
		  @pictures = @category.pictures.order("created_at").page(params[:page]).per_page(20)
		else
		  @pictures = Picture.order("created_at").page(params[:page]).per_page(20)
		end
	end

end
