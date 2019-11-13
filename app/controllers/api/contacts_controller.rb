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
      name: params[:name], 
      phone: params[:phone],
      email: params[:email])
    @contact.save
    render 'show.json.jb'
  end

  def update
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @name = params[:name]
    @phone = params[:phone]
    @email = params[:email]
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





























