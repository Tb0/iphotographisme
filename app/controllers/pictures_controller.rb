# -*- encoding : utf-8 -*-
class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

end
