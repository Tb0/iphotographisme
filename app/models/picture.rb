# -*- encoding : utf-8 -*-
class Picture < ActiveRecord::Base

  ##################
  ### Attributes ###
  ##################

  attr_accessible :name, :description

  #################
  ### Relations ###
  #################

  has_many :categories, through: :category_pictures

  ###################
  ### Validations ###
  ###################

  validates :name,  presence: true
  validates :file, presence: true

end
