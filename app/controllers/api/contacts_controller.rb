class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
    render = 'index.json.jb'
  end

  def show
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
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
    render 'show.json.jb'
  end

  def destroy
    the_id = params[:id]
    @contact = Conact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jb'
  end 

end





























