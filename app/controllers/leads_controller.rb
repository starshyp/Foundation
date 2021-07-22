class LeadsController < ApplicationController
  before_action :set_lead, only: %i[ show edit update destroy ]

  require 'sendgrid-ruby'
  include SendGrid

  # GET /leads or /leads.json
  def index
    redirect_to "/index"
    # @leads = Lead.all
  end

  # GET /leads/1 or /leads/1.json
  def show
  end

  # GET /leads/new
  def new
    redirect_to "/index"
    @lead = Lead.new
  end

  # GET /leads/1/edit
  def edit
    redirect_to "/index"
  end

  # POST /leads or /leads.json
  def create
    @lead = Lead.new(lead_params)
    @lead.DateOfRequest = Time.now

    #################### SENDGRID ALTERNATIVE ###################
    # #def sendgrid
    mail = Mail.new
    mail.from = Email.new(email: ENV['SENDGRID_EMAIL'])
    personalization = Personalization.new
    personalization.add_to(Email.new(email: @lead.Email))
    #personalization.add_to(Email.new(email: params[:Email]))
    personalization.add_dynamic_template_data({
      "FullName" => @lead.FullName,
      "ProjectName" => @lead.ProjectName
    })
    mail.add_personalization(personalization)
    mail.template_id = ENV['SENDGRID_TEMPLATE_ID']

    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    begin
      response = sg.client.mail._("send").post(request_body: mail.to_json)
    rescue Exception => e
      puts e.message
    end
    puts response.status_code
    puts response.body
    #puts response.parsed_body
    puts response.headers
    # #end
    ######################## SENDGRID V1 ########################
    # from = Email.new(email: '')
    # #to = SendGrid::Email.new(email: :Email.to_s)
    # to = Email.new(email: @lead.Email)
    # subject = 'Thanks for contacting us!'
    # content = Content.new(
    #   type: 'text/html', value:
    #   '<html><body><img src="http://rocketelevators.online/assets/logo.png" width="128" height="60"><p>
    #   Greetings ' + :FullName.to_s + ',<p>
    #   We thank you for contacting Rocket Elevators to discuss the opportunity to contribute to your project ' + :ProjectName.to_s + '. <p>
    #   A representative from our team will be in touch with you very soon. We look forward to demonstrating the value of our solutions and helping you choose the appropriate product given your requirements. <p>
    #   We’ll Talk soon <br />
    #   The Rocket Team
    #   </body></html>'
    # )
    # mail = Mail.new(from, subject, to, content)
    #
    # sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    # response = sg.client.mail._('send').post(request_body: mail.to_json)
    # puts response.status_code
    # puts response.body
    # #puts response.parsed_body
    # puts response.headers
    ############################################################

    respond_to do |format|
      if @lead.save
        # Deliver the thank you email
        #UserNotifierMailer.thank_you_email(@lead).deliver
        #flash[:alert] = 'Message sent.'
        format.html { redirect_to "/index", notice: "Lead was successfully created." }
        format.json { render :show, status: :created, location: @lead }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /leads/1 or /leads/1.json
  def update
    redirect_to "/index"
    respond_to do |format|
      if @lead.update(lead_params)
        format.html { redirect_to @lead, notice: "Lead was successfully updated." }
        format.json { render :show, status: :ok, location: @lead }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @lead.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /leads/1 or /leads/1.json
  def destroy
    redirect_to "/index"
    # @lead.destroy
    # respond_to do |format|
    #   format.html { redirect_to leads_url, notice: "Lead was successfully destroyed." }
    #   format.json { head :no_content }
    # end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.require(:lead).permit(:FullName, :CompanyName, :Email, :Phone, :ProjectName, :ProjectDescription, :Departement, :Message, :AttachedFile, :DateOfRequest, :file)
    end
end
