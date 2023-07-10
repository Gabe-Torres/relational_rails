require 'rails_helper'

RSpec.describe Nation do 
  it {should have_many :benders}
end