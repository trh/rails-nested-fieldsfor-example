class WhoisContactsController < ApplicationController
  before_action :set_whois_contact, only: [:show, :edit, :update, :destroy]

  # GET /whois_contacts
  # GET /whois_contacts.json
  def index
    @whois_contacts = WhoisContact.all
  end

  # GET /whois_contacts/1
  # GET /whois_contacts/1.json
  def show
  end

  # GET /whois_contacts/new
  def new
    @whois_contact = WhoisContact.new
  end

  # GET /whois_contacts/1/edit
  def edit
  end

  # POST /whois_contacts
  # POST /whois_contacts.json
  def create
    @whois_contact = WhoisContact.new(whois_contact_params)

    respond_to do |format|
      if @whois_contact.save
        format.html { redirect_to @whois_contact, notice: 'Whois contact was successfully created.' }
        format.json { render action: 'show', status: :created, location: @whois_contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @whois_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /whois_contacts/1
  # PATCH/PUT /whois_contacts/1.json
  def update
    respond_to do |format|
      if @whois_contact.update(whois_contact_params)
        format.html { redirect_to @whois_contact, notice: 'Whois contact was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @whois_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /whois_contacts/1
  # DELETE /whois_contacts/1.json
  def destroy
    @whois_contact.destroy
    respond_to do |format|
      format.html { redirect_to whois_contacts_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_whois_contact
      @whois_contact = WhoisContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def whois_contact_params
      params.require(:whois_contact).permit(:domain_id, :first_name, :last_name, :street, :number, :postal_code, :city, :country_id, :phone_number, :email_address, :company_name, :company_type_id)
    end
end
