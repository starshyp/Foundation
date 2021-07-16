class InterventionsController < ApplicationController
  before_action :set_intervention, only: %i[ show edit update destroy ]
  # after_action :new_intervention

  require 'slack-notifier'

  # GET /interventions or /interventions.json
  def index
    @interventions = Intervention.all
  end

  # GET /interventions/1 or /interventions/1.json
  def show
  end

  # GET /interventions/new
  def new
    @intervention = Intervention.new
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

    user = Employee.where(user_id: current_user.id).first
    # customer = Customer.where(params[:customer_id]).first.CompanyName
    customer = Customer.find(params[:intervention][:customer_id]).CompanyName

    if Building.exists?(params[:intervention][:building_id]) then
    building = Building.find(params[:intervention][:building_id])
    address = Address.find(building.address_id).NumberAndStreet
    else
      address = "is empty"
      end
    #Address.find(Building.find(params[:intervention][:building_id]).address_id).NumberAndStreet

    if Battery.exists?(params[:intervention][:battery_id]) then
    battery = Battery.find(params[:intervention][:battery_id]).id
    else
      battery = "x"
    end

    if Column.exists?(params[:intervention][:column_id]) then
    column = Column.find(params[:intervention][:column_id]).id
    else
      column = "x"
    end

    if Elevator.exists?(params[:intervention][:elevator_id]) then
    elevator = Elevator.find(params[:intervention][:elevator_id]).id
    else
      elevator = "x"
      end

    # Employee.find(params[:intervention][:employee_id]).present?

    if Employee.exists?(params[:intervention][:employee_id]) then
      employee_first_name = Employee.find(params[:intervention][:employee_id]).FirstName
      employee_last_name = Employee.find(params[:intervention][:employee_id]).LastName
      employee = employee_first_name + " " + employee_last_name
      else
      employee = "No employee"
    end
    #e2 = Employee.find(params[:intervention][:employee_id]).LastName
    #
    report = @intervention.report

    #desc = params[:report]
    # desc = Intervention.where("id = ?", Intervention.first.report)
    # desc = Intervention.where(params[:report]).first.report
    #desc = Intervention.find(Intervention.find(params[:intervention][:report]))

    #customer = Customer.where(params[:id]).first
    #building = Building.where(address_id: params[:NumberAndStreet]).first

    #building = Building.where(params[:address_id]).first.NumberAndStreet
    #building = Building.where(building_id: params[address_id]).first

    notifier = Slack::Notifier.new ENV["WEBHOOK"]
    notifier.ping "An intervention has been created by #{user.FirstName} #{user.LastName} for customer #{customer} for building: #{address}, battery id #{battery}, column id #{column}, and elevator id #{elevator}. #{employee} is on the case.
Report: #{report}"

  end

  # def new_intervention
  #
  #   user = Employee.where(user_id: current_user.id).first
  #   customer = Customer.where().first
  #   # customer = Customer.where(["id = ?", id]).select("CompanyName").first
  #
  #   ##group chat with coaches
  #   # notifier = Slack::Notifier.new ""
  #   ##direct msg to me
  #   notifier = Slack::Notifier.new ""
  #   notifier.ping "An intervention has been created by #{user.FirstName} for customer #{customer}"
  #   # slack = Slack::Notifier.new("")
  #   #text = "An intervention #{self.id} has been created by author #{self.author} for customer #{self.customer_id}."
  #   # $SlackClient.chat_postMessage(channel: '', text: text, as_user: true)
  # end

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
