class RemoveDateColumn < ActiveRecord::Migration
  def up
   change_column :concerts, :date, :date
  end

  def down
   change_column :concerts, :date, :datetime
  end
end
