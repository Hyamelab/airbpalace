class PalacesController < ApplicationController
  # before_action :authenticate_user, :only [:create, :update, :destroy]
  # before_action :set_palace, :only [:show, :edit, :update, :destroy]

  def index
    @palaces = Palace.all
  end

  def show
  end

  def new
    @palace = Palace.new
  end

  def create
    @palace = Palace.new(palace_params)
    @palace.user = current_user
    if @palace.save
      redirect_to palaces_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @palace.update(palace_params)
    redirect_to palace_path(@palace)
  end

  def destroy
    @palace.destroy
    redirect_to palaces_path
  end

  private

  def palace_params
    params.require(:palace).permit(:name, :description, :address)
  end

  def set_palace
    @palace = Palace.find(params[:id])
  end
end
