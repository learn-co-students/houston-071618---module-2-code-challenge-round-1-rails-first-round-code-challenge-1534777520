class HeroinesController < ApplicationController
  before_action :select_heroine, only: [:show, :edit, :update, :destroy]

  def index
    @heroines = Heroine.all
  end

  def show
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(params_heroine)

    if @heroine.valid?
    @heroine.save
    redirect_to heroine_path(@heroine)
    else
    render :new
    end

  end

  def search
    # raise "some search magic"
    if Heroine.find_by(:power_id == :power_id)
    @heroine
    # raise "true"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def params_heroine
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def select_heroine
    @heroine = Heroine.find(params[:id])
  end



end
