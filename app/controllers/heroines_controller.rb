class HeroinesController < ApplicationController
  before_action :set_heroine, only: [:show, :edit, :update, :destroy]

  # GET /heroines
  def index
    if params[:query] != nil
      power_name = params[:query]
      power = Power.find_by(name: power_name)

      if power
        @heroines = Heroine.where("power_id = ?", power.id)
      else
        @heroines = Heroine.all
      end

    else
      @heroines = Heroine.all
    end
  end

  # GET /heroines/1
  def show
  end

  # GET /heroines/new
  def new
    @heroine = Heroine.where("power_id = ?", power.id)
    @powers = Power.all
  end

  # GET /heroines/1/edit
  def edit
    @heroine = Heroine.new
    @powers = Power.all
  end

  # POST /heroines
  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      flash[:errors] = @heroine.errors.full_messages
      redirect_to new_heroine_path
    end
  end

  # PATCH/PUT /heroines/1
  def update
    respond_to do |format|
      if @heroine.update(heroine_params)
        format.html { redirect_to @heroine, notice: 'Heroine was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /heroines/1
  def destroy
    @heroine.destroy
    respond_to do |format|
      format.html { redirect_to heroines_url, notice: 'Heroine was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heroine
      @heroine = Heroine.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def heroine_params
      params.require(:heroine).permit(:name, :super_name, :power_id)
    end
end
