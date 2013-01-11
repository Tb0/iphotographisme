# -*- encoding : utf-8 -*-
class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
    	t.string :name, null: false
    	t.text :description
    	t.string :file, null: false
      t.integer :category_id
      t.timestamps
    end
  end
end
