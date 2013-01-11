# -*- encoding : utf-8 -*-
class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :name, null: false
    	t.text :description
    	t.string :file, null: false
      t.timestamps
    end

    create_table :category_pictures, id: false do |t|
    	t.integer :picture_id, null: false
    	t.integer :category_id, null: false
    end
  end
end
