class ContactsController < ApplicationController
  before_action :authenticate_user!
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver
      flash.now[:notice] = 'your work update has been sent successfully'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end