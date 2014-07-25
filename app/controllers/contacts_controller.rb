class ContactsController < ApplicationController
	before_action :authenticate_user!
	def new
		@contact = Contact.new
	end
	def create
		@contact = Contact.new(contact_params)
 
    respond_to do |format|
      if @contact.save
        # Tell the UserMailer to send a welcome email after save
        ContactMailer.contact_email(@contact).deliver
 
        format.html { redirect_to(new_contact_path, notice: 'Contact was successfully created.') }
        format.json { render json: @contact, status: :created, location: @contact }
      else
        format.html { render action: 'new' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
 
	end
	
	private
	def contact_params
		params.require(:contact).permit(:name,:email,:message)
	end
	
end
