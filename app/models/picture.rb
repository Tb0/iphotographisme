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

  def original_width
    @original_width ||= Magick::Image::read("#{UPLOAD_PATH}#{file_url}").first.columns 
  end

  def resized_width
    @resized_width ||= Magick::Image::read("#{UPLOAD_PATH}#{file.resized}").first.columns 
  end

  def original_height
    @original_height ||= Magick::Image::read("#{UPLOAD_PATH}#{file_url}").first.rows
  end

  def resized_height
    @original_height ||= Magick::Image::read("#{UPLOAD_PATH}#{file.resized}").first.rows
  end

  def resized_picture_path
    file.resized
  end

  def original_picture_path
    file_url
  end

end
