class InterventionsController < ApplicationController
  before_action :set_intervention, only: %i[ show edit update destroy ]

  # GET /interventions or /interventions.json
  def index
    @interventions = Intervention.all
    # @customers = Customer.all
    # @buildings = Building.where("customer_id = ?", Customer.first.id)
  end

  # GET /interventions/1 or /interventions/1.json
  def show
  end

  # GET /interventions/new
  def new
    @intervention = Intervention.new
    #@customer params[:customers]
    #
  end

  # GET /interventions/1/edit
  def edit
  end

  # POST /interventions or /interventions.json
  def create
    @intervention = Intervention.new(intervention_params)
    @intervention.author = current_user.id

    respond_to do |format|

      if @intervention.save
        format.html { redirect_to @intervention, notice: "Intervention was successfully created." }
        #format.html { redirect_to (rails_admin_path + "/intervention/#{@intervention.id}"), notice: "Intervention was successfully created." }
        format.json { render :show, status: :created, location: @intervention }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  def refreshbuildings
    puts "Customer ID", params[:id]
    puts "TEST.../"
    @buildings = Building.where(customer_id: params[:id])
    puts @buildings

    respond_to do |format|
    #  @buildings
    # end
    format.json {render json: {buildings: @buildings}}
    end

    # json {render json: {buildings: @buildings}}
    # render json: @buildings
  end

  def refreshbatteries
    puts "Battery ID", params[:id]
    puts "TEST.../"
    @batteries = Battery.where(building_id: params[:id])
    puts @batteries

    respond_to do |format|
      format.json {render json: {batteries: @batteries}}
    end

  end

  def refreshcolumns
    puts "Column ID", params[:id]
    puts "TEST.../"
    @columns = Column.where(battery_id: params[:id])
    puts @columns

    respond_to do |format|
      format.json {render json: {columns: @columns}}
    end

  end

  def refreshelevators
    puts "Elevator ID", params[:id]
    puts "TEST.../"
    @elevators = Elevator.where(column_id: params[:id])
    puts @elevators

    respond_to do |format|
      format.json {render json: {elevators: @elevators}}
    end

  end

  # PATCH/PUT /interventions/1 or /interventions/1.json
  def update
    respond_to do |format|
      if @intervention.update(intervention_params)
        format.html { redirect_to @intervention, notice: "Intervention was successfully updated." }
        format.json { render :show, status: :ok, location: @intervention }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @intervention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interventions/1 or /interventions/1.json
  def destroy
    @intervention.destroy
    respond_to do |format|
      format.html { redirect_to interventions_url, notice: "Intervention was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_intervention
      @intervention = Intervention.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def intervention_params
      params.require(:intervention).permit(:author, :customer_id, :building_id, :battery_id, :column_id, :elevator_id, :employee_id, :start_date, :end_date, :result, :report, :status)
    end
end
