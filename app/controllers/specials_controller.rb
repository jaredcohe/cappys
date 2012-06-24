class SpecialsController < ApplicationController

  # GET /specials
  def index
    @specials_mailers = Special.where(:special_type => 'Mailers')
    @specials_other = Special.where(:special_type => 'Other')
  end

  # GET /admin_specials
  def admin_specials
    @specials = Special.all
  end

  # GET /specials/1
  def show
    @special = Special.find(params[:id])
  end

  # GET /specials/new
  def new
    @special = Special.new
  end

  # GET /specials/1/edit
  def edit
    @special = Special.find(params[:id])
  end

  # POST /specials
  def create
    @special = Special.new(params[:special])

    if @special.save
      redirect_to admin_specials_path, notice: 'Special was successfully created.'
    else
      render action: "new"
    end
  end

  # PUT /specials/1
  def update
    @special = Special.find(params[:id])
    if @special.update_attributes(params[:special])
      redirect_to admin_specials_path, notice: 'Special was successfully updated.'
    else
      render action: "edit"
    end
  end

  # DELETE /specials/1
  def destroy
    @special = Special.find(params[:id])
    @special.destroy
    redirect_to admin_specials_path, notice: 'Special was successfully created.'
  end
end
