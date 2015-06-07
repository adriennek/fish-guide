class AddingFamily < ActiveRecord::Migration
  def change
  	add_column :animals, :family, :string
  end
end
