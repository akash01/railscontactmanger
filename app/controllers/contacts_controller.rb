class ContactsController < ApplicationController
  
  def index
  	 @contact = Contact.new
  	@contacts = Contact.sorted
  end

  def create
    @contacts = Contact.sorted
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to :back, :notice => 'New contact successfully added'
    else
      render( :index )
    end
  end

  def edit
  	@contacts = Contact.sorted
  	@contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path, :notice => 'Your contact has successfully been updated'
    else
      redirect_to :back, :notice => 'There was an error updating your contact.'
    end
  end

  def destroy
  	@contact = Contact.find(params[:id]).destroy
  	redirect_to :back, :notice => "Deleted " + @contact.first_name + " successfully" 
  end

  private
    def contact_params
      params.require(:contact).permit(:first_name,:last_name,:email,:phone_number)
    end

end
