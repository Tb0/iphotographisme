# -*- encoding : utf-8 -*-
require 'test_helper'

class PicturesControllerTest < ActionController::TestCase
  
	def test_index
		picture = FactoryGirl.create(:picture)
		get :index
		assert_equal(1, assigns(:pictures).count)
		assert_equal(picture, assigns(:pictures).first)
	end

end
