# encoding: utf-8

class FileUploader < CarrierWave::Uploader::Base
  
  include CarrierWave::MiniMagick
  
  storage :file
 
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

  version :thumb do
    process :resize_to_fill => [200,200]
  end

  version :resized do
    # returns an image with a maximum width of 100px 
    # while maintaining the aspect ratio
    # 10000 is used to tell CW that the height is free 
    # and so that it will hit the 100 px width first
    process :resize_to_fit => [10000, 200]
  end


end
