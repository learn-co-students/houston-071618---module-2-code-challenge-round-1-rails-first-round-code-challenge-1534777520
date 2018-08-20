class PowersController < ApplicationController

  before_action :power_select, only: [:show, :edit, :update, :destroy]

  def index
    @powers = Power.all
  end

  def show
  end

  def new
    @power = Power.new
  end

  def create
    @power = Power.create(power_params)
    redirect_to @power
  end

  def edit
  end

  def update
    @power.update(power_params)
    redirect_to @power
  end

  def destroy
    @power.delete
    redirect_to powers_path
  end

    private

    def power_select
      @power = Power.find(params[:id])
    end

    def power_params
      params.require(:power).permit(:name, :description, heroine_ids: [])
    end

end
