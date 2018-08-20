class PowersController < ApplicationController
  before_action :load_power
  
  def index
    @powers = Power.all
  end

  def show
    @matching_heroines = Heroine.all.select {|heroine| heroine.power == @power}
  end

  def new
    @power_options = Power.all.map {|power| [power.name, power.id]}
  end

  def create
    power = Power.new(power_params)
    
    if power.save
      power.save
      redirect_to power
    else
      render :new 
    end
  end

  def edit 
    @power_options = Power.all.map {|power| [power.name, power.id]}
  end 

  def update
    @power.update(power_params)
    
    redirect_to @power
  end 

  def destroy
    @power.destroy
    
    redirect_to powers_path
  end

  private

  def load_power
    if params[:id] != nil
      @power = Power.find(params[:id])
    else
      @power = Power.new
    end
  end

  def power_params
    params.require(:power).permit(:name, :description)
  end
end

