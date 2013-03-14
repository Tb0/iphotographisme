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

  def image
    @image ||= MiniMagick::Image.open("#{UPLOAD_PATH}#{file_url}")
  end

  def resized_image
    @resized_image ||= MiniMagick::Image.open("#{UPLOAD_PATH}#{file.resized}") 
  end

  def original_width
    @original_width ||= image['width'] 
  end

  def resized_width
    @resized_width ||= resized_image['width']
  end

  def original_height
    @original_height ||= image['height']
  end

  def resized_height
    @resized_height ||= resized_image['height']
  end

  def resized_picture_path
    file.resized
  end

  def original_picture_path
    file_url
  end

end
