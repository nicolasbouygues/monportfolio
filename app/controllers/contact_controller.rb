class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.deliver
      redirect_to contacts_path, notice: "Thank you for your message !"
    else
      render json: @contact.errors
    end
  end

private

    def contact_params
      params.require(:contact).permit(:name, :email, :message)
    end

end
