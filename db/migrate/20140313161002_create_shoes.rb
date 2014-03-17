class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.string :name
      t.string :designer
      t.text :description
      t.string :color
      t.string :picture

      t.timestamps
    end
  end
end
