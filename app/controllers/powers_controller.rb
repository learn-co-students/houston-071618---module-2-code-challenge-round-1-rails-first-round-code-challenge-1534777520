class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

    def set_power
      @power = Power.find(params[:id])
    end

    
    def power_params
      params.require(:power).permit(:id, :name, :description)
    end
end
