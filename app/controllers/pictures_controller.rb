# -*- encoding : utf-8 -*-
class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
		@categories = Category.all
	end

end
