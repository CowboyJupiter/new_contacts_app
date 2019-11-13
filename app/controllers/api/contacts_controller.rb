class Api::ContactsController < ApplicationController
  def index
    @contacts = Contact.all
    render = 'index.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name], 
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      full_name: params[:full_name],
      phone: params[:phone],
      email: params[:email],
      bio: params[:bio])
    @contact.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @first_name = params[:first_name],
    @middle_name = params[:middle_name]
    @last_name = params[:last_name]
    @full_name = params[:full_name]
    @phone = params[:phone]
    @email = params[:email]
    @bio = params[:bio]
    @contact.save
    render 'show.json.jb'
  end

  def destroy
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jb'
  end 

end





























