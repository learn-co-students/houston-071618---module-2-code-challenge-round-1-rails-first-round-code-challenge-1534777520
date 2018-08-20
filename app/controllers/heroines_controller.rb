class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    # @heroine.power.build
  end

  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save
      redirect_to @heroine
    else
      render :new
    end
    # @her = Heroine.create(heroine_params)
    # redirect_to @her
  end


  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end


end
