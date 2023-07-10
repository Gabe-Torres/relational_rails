class Nation < ApplicationRecord
  has_many :benders
  def count_benders 
    benders.count
  end
end