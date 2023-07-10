class AddNationToBenders < ActiveRecord::Migration[7.0]
  def change
    add_reference :benders, :nation, null: false, foreign_key: true
  end
end
