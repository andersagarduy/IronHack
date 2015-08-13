class AddInfotoConcerts < ActiveRecord::Migration
  def change
  	add_column :concerts, :band, :string
  	add_column :concerts, :city, :string
  	add_column :concerts, :date, :datetime
  	add_column :concerts, :price, :integer
  	add_column :concerts, :description, :text
  end
end
