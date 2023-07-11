class NationsController < ApplicationController
  def index
    @nations = Nation.all.order(created_at: :asc)
  end

  def show 
    @nation = Nation.find(params[:id])
    # bender_count = @nation.benders.count
  end

  def new
    # @nation = Nation.new
  end

  def create
    nation = Nation.create!(nation_params)
    redirect_to "/nations"
  end

  def edit
    @nation = Nation.find(params[:id])
  end

  def update
    nation = Nation.find(params[:id])
    nation.update(nation_params)
    redirect_to '/nations'
  end

  def nation_params
    params.permit(:name, :population, :monarchy)
  end
end
