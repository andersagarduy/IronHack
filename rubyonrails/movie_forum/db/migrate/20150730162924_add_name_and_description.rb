class AddNameAndDescription < ActiveRecord::Migration
  def change
  	add_column :movies, :name, :string
  	add_column :movies, :description, :text
  end
end
