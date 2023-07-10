class CreateNation < ActiveRecord::Migration[7.0]
  def change
    create_table :nations do |t|
      t.string :name
      t.boolean :monarchy
      t.integer :rank

      t.timestamps
    end
  end
end
