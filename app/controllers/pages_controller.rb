class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @palaces = Palace.all
  end

  def palaces
    @palaces = Palace.where(user_id: current_user.id)
  end

  def bookings
    @bookings = Booking.where(user_id: current_user.id)
  end
end
