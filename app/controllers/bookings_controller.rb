# class BookingsController < ApplicationController
#   before_action :authenticate_user, :only [:create, :update, :cancel]
#   before_action :set_booking, :only [:show, :edit, :update, :cancel]

#   def index
#     @bookings = Booking.all
#   end

#   def show
#   end

#   def new
#     @booking = Booking.new
#   end

#   def create
#     @booking = Booking.new(booking_params)
#     @booking.user = current_user
#     if @booking.save!
#       redirect_to booking_path(@booking)
#     else
#       render :new, status: :unprocessable_entity
#     end
#   end

#   def edit
#   end

#   def update
#     @booking.update(booking_params)
#     redirect_to booking_path(@booking)
#   end

#   def cancel
#     @booking.status = false
#     @booking.save!
#     redirect_to bookings_path
#   end

#   private
#   def booking_params
#     params.require(:booking).permit(:price, :begin_date, :end_date)
#   end

#   def set_booking
#     @booking = Booking.find(params[:id])
#   end
# end
