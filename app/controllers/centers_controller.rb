class CentersController < ApplicationController
  def index
    @centers = Center.all
  end

  def new
    @center = Center.new
  end

  def create
    center = Center.create center_params
    redirect_to center
  end

  def show
    @center = Center.find params[:id]
  end

  def edit
    @center = Center.find params[:id]
  end

  def update
    center = Center.find params[:id]
    center.update center_params
    redirect_to center
  end

  def destroy
    center = Center.find params[:id]
    center.destroy
    redirect_to centers_path
  end

  private
  def center_params
    params.require(:center).permit(:name, :contact, :address)
  end

end
