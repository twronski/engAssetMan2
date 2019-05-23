class EquipmentController < ApplicationController
  def index
    @equipment = Equipment.all
  end

  def new
  end

  def create
  end

  def show
    @equipment = Equipment.friendly.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
