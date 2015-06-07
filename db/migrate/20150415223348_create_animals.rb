class CreateAnimals < ActiveRecord::Migration
  def change
    create_table :animals do |t|
      t.string :name
      t.string :latin_name
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
