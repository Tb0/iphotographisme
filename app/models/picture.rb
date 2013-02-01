# -*- encoding : utf-8 -*-
class Picture < ActiveRecord::Base

	mount_uploader :file, FileUploader

  ##################
  UPLOAD_PATH = File.join(File.dirname(__FILE__),'../../public').freeze
  ##################

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

  def width(filepath)
    @width ||= Magick::Image::read("#{UPLOAD_PATH}#{filepath}").first.columns
  end

end
