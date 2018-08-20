class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def edit

  end

  def create
    @heroine = Heroine.create(heroine_params)
    if @heroine.valid?
      @heroine = Heroine.create
    else
      @heroine.errors
      redirect_to heroines_path
    end
  end

  def update
    
  end

  def destroy
    @heroine.destroy
    
    redirect_to heroines_path
  end

  private
  
    def set_heroine
      @heroine = Heroine.find(params[:id])
    end

    def heroine_params
      params.require(:heroine).permit(:id, :name, :super_name, :power_id)
    end
end
