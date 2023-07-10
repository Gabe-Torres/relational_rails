class RenameRankToPopulation < ActiveRecord::Migration[7.0]
  def change
    rename_column :nations, :rank, :population
  end
end
