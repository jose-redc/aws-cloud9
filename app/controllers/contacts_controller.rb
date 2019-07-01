class ContactsController < ApplicationController
<<<<<<< HEAD

  def new
  end

=======
>>>>>>> c2e559a83c680d5a972b128ed5e9190e9d88709a
  
  def new
  @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      
      name = params[:contact][:name]
      email = params[:contact][:email]
      body = params[:contact][:comments]
      ContactMailer.contact_email(name, email, body).deliver

      flash[:success] = "Message sent."
      redirect_to new_contact_path
      
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
      redirect_to new_contact_path
    end
    
  end
  
  private
    def contact_params
       params.require(:contact).permit(:name, :email, :comments)
    end
<<<<<<< HEAD
=======
  
>>>>>>> c2e559a83c680d5a972b128ed5e9190e9d88709a

end