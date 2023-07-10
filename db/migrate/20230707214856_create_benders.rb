class CreateBenders < ActiveRecord::Migration[7.0]
  def change
    create_table :benders do |t|
      t.string :name
      t.integer :age
      t.boolean :avatar
      t.string :bending_style

      t.timestamps
    end
  end
end
