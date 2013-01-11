# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::RMagick
  
  storage :file
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  #version :thumb do
  #  process :resize_and_pad => [200,200]
  #end


end
