class DonationLocalsController < ApplicationController
  before_action :set_donation_local, only: [:show, :edit, :update, :destroy]

  # GET /donation_locals
  # GET /donation_locals.json
  def index
    @donation_locals = DonationLocal.all
  end

  # GET /donation_locals/1
  # GET /donation_locals/1.json
  def show
  end

  # GET /donation_locals/new
  def new
    @donation_local = DonationLocal.new
  end

  # GET /donation_locals/1/edit
  def edit
  end

  # POST /donation_locals
  # POST /donation_locals.json
  def create
    @donation_local = DonationLocal.new(donation_local_params)

    respond_to do |format|
      if @donation_local.save
        format.html { redirect_to @donation_local, notice: 'Donation local was successfully created.' }
        format.json { render :show, status: :created, location: @donation_local }
      else
        format.html { render :new }
        format.json { render json: @donation_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /donation_locals/1
  # PATCH/PUT /donation_locals/1.json
  def update
    respond_to do |format|
      if @donation_local.update(donation_local_params)
        format.html { redirect_to @donation_local, notice: 'Donation local was successfully updated.' }
        format.json { render :show, status: :ok, location: @donation_local }
      else
        format.html { render :edit }
        format.json { render json: @donation_local.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /donation_locals/1
  # DELETE /donation_locals/1.json
  def destroy
    @donation_local.destroy
    respond_to do |format|
      format.html { redirect_to donation_locals_url, notice: 'Donation local was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_donation_local
      @donation_local = DonationLocal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def donation_local_params
      params.fetch(:donation_local, {})
    end
end
