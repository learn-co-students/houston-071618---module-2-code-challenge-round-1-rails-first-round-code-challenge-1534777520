class PowersController < ApplicationController
  before_action :select_power, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def select_power
    @power = Power.find(params[:id])
  end

  def params_power
    params.require(:power).permit(:name, :description)
  end

end
