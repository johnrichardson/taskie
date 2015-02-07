class ContactsController < ApplicationController
  def create
    @c = Contact.new(contact_params)
    p @c.valid?
    if @c.save
      # ...
    else
      flash.now[:error] = "Could not save Contact"
      p @c.errors.messages
   end

    #render :json => @c.name
  end

  private
  # Using a private method to encapsulate the permissible parameters is just a good pattern
  # since you'll be able to reuse the same permit list between create and update. Also, you
  # can specialize this method with per-user checking of permissible attributes.
  def contact_params
    params.require(:contact).permit(:email, :phone, :name, :message)
  end

end
