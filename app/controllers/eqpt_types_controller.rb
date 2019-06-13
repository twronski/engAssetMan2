class EqptTypesController < ApplicationController
  
  before_action :set_eqpt_type_id, only: [:show, :edit, :update, :delete]
  

  def index
    @eqpt_types = EqptType.all
  end

  def show

  end

  def new
    @eqpt_type = EqptType.new
  end

  def create
    @eqpt_type = EqptType.new(eqpt_type_params)

    if @eqpt_type.save
      redirect_to eqpt_type_path, notice: 'Type of Equipment successfully created'     
    else
      render :new
    end
  end

  def edit
  end

  def update
   
   if  @eqpt_type.update(eqpt_type_params)
      redirect_to eqpt_type_path, notice: 'Type of Equipment successfully updated'  
   else
      render :edit
   end

  end

  def delete
    @eqpt_type.destroy
    redirect_to eqpt_types_path, notice: 'Type of equipment successfully deleted'
  end

  private

  def set_eqpt_type_id
    @eqpt_type = EqptType.find(eqpt_type_params[:id])
    
  end

  def eqpt_type_params
    params.require[:eqpt_type].permit[:id, :name]
  end
  

end
