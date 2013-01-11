# -*- encoding : utf-8 -*-
class Category < ActiveRecord::Base
  
  ##################
  ### Attributes ###
  ##################

  attr_accessible :name

  #################
  ### Relations ###
  #################
  
  has_many :pictures, through: :category_pictures


  ###################
  ### Validations ###
  ###################

  validates :name,  presence: true



end
