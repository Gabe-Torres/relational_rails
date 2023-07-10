class NationsController < ApplicationController
  def index
    @nations = Nation.all.order(created_at: :asc)
  end

  def show 
    @nation = Nation.find(params[:id])
    # bender_count = @nation.benders.count
  end
end
