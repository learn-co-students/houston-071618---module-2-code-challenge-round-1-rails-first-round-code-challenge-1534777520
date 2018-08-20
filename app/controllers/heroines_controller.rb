class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show]

  

  def index
   
    @heroines = if params[:name]
      Heroine.where("name LIKE ?", "%#{params[:name]}%")
    else
      @heroines = Heroine.all
    end

  end

  def show
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    if @heroine = Heroine.new(heroine_params)
      @heroine.save

      redirect_to @heroine
    else

      render :new
    end
  end

  private

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
