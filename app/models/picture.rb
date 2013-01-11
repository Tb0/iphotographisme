# -*- encoding : utf-8 -*-
class Picture < ActiveRecord::Base

	mount_uploader :file, FileUploader

  ##################
  ### Attributes ###
  ##################

  attr_accessible :name, :description, :file, :category_id

  #################
  ### Relations ###
  #################

  belongs_to :category

  ###################
  ### Validations ###
  ###################

  validates :name,  presence: true
  validates :file, presence: true

end
