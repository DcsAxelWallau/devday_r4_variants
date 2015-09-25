class ContactsController < ApplicationController

  def index
    @contacts = Contact.all.order(:name).paginate(:page => params[:page], :per_page => 20)
  end

end