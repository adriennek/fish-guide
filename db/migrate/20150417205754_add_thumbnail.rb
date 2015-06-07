class AddThumbnail < ActiveRecord::Migration
  def change
  	add_column :animals, :thumburl, :string
  end
end
