class ContactsController < ApplicationController
  def index
  	@contacts = Contact.sorted
  end

  def show
  end

  def edit
  end

  def delete
  end
end
