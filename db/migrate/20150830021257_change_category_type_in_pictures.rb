class ChangeCategoryTypeInPictures < ActiveRecord::Migration
  def self.up
  	change_column :pictures, :category, :string
  end

  def self.down
  	change_column :pictures, :category, :select
  end
end
