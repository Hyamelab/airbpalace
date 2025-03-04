 class BookingsController < ApplicationController
  # before_action :set_booking, only: [:show, :update, :cancel]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @palace = Palace.find(params[:palace_id])
    @booking = Booking.new
  end

  def create

    @palace = Palace.find(params[:palace_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.status = nil
    @booking.palace = @palace

    if @booking.save
      redirect_to palace_path(@palace)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def accept
    @booking = Booking.find(params[:booking_id])
    @booking.status = true
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :show, status: :unprocessable_entity
    end
  end

  def refuse
    @booking = Booking.find(params[:booking_id])
    @booking.status = false
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :show, status: :unprocessable_entity
    end
  end

#   def cancel
#     @booking.status = false
#     @booking.save!
#     redirect_to bookings_path
#   end

  private
  def booking_params
    params.require(:booking).permit(:begin_date, :end_date, :palace_id)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
