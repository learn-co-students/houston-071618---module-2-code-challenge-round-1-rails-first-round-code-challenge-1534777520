class PowersController < ApplicationController
  helper_method :selected_power

  def index
    @powers = Power.all
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.create(power_params)
    redirect_to powers_path
  end

  def show
    @power = selected_power
  end

  def edit
    @power = selected_power
  end

  def update
    @power = selected_power.update(power_params)

    redirect_to power_path
  end

  def selected_power
    Power.find(params[:id])
  end

  private
  def power_params
    params.require(:heroine).permit(:name, :description)
  end
end
