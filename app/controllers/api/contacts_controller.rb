class Api::ContactsController < ApplicationController
  def index
    if current_user
      @contacts = current_user.contacts
      render = 'index.json.jb'
    else 
      render json: []
    end
  end

  def show
    @contact = Contact.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    # address = params[:address]
    # coordinates = Geocoder.coordinates(address)
    # latitude = coordinates[0]
    # longitude = coordinates[1]
    @contact = Contact.new(
      first_name: params[:first_name], 
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      # full_name: 
      phone: params[:phone],
      email: params[:email],
      bio: params[:bio],
      user_id: current_user.id,
      lat: latitude,
      lng: longitude)
    if @contact.save
      render 'contact.json.jb'
    else 
      render json: {errors: @contacts.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def update
    # address = params[:address]
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @first_name = params[:first_name],
    @middle_name = params[:middle_name]
    @last_name = params[:last_name]
  
    @phone = params[:phone]
    @email = params[:email]
    @bio = params[:bio]
    @latitude = params[:latitude]
    @longitude = params[:longitude]
    if @contact.save
      render 'show.json.jb'
    else 
      render json: {errors: @contacts.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    the_id = params[:id]
    @contact = Contact.find_by(id: the_id)
    @contact.destroy
    render 'destroy.json.jb'
  end 

end





























