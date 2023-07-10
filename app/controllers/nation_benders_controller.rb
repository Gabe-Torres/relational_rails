class NationBendersController < ApplicationController
  def index
    @nation = Nation.find(params[:nation_id])
    @benders = @nation.benders
  end
end
