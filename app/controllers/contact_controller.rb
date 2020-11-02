class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def show
  end

  def create
    @contact = Contact.new(contact_params)
      if @contact.deliver
        flash[:notice] = "Message sent"
        redirect_to contacts_path
      else
        render :new
    end
  end

private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

end
