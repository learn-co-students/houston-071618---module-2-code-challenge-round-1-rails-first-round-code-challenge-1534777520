class PowersController < ApplicationController
  before_action :set_power, only: [:show, :edit, :update, :destroy]

  # GET /powers
  def index
    @powers = Power.all
  end

  # GET /powers/1
  def show
  end

  # GET /powers/new
  def new
    @power = Power.new
  end

  # GET /powers/1/edit
  def edit
  end

  # POST /powers
  def create
    @power = Power.new(power_params)

    respond_to do |format|
      if @power.save
        format.html { redirect_to @power, notice: 'Power was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /powers/1
  def update
    respond_to do |format|
      if @power.update(power_params)
        format.html { redirect_to @power, notice: 'Power was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /powers/1
  def destroy
    @power.destroy
    respond_to do |format|
      format.html { redirect_to powers_url, notice: 'Power was successfully destroyed.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_power
      @power = Power.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def power_params
      params.fetch(:power, {})
    end
end
