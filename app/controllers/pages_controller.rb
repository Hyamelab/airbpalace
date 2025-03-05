class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @palaces = Palace.all
  end

  def palaces
    @palaces = Palace.where(user_id: current_user.id)
  end

  def bookings_as_visitor
    @past_bookings = current_user.bookings_as_visitor.where("end_date < ?", Date.current)
    @future_bookings = current_user.bookings_as_visitor.where("begin_date > ?", Date.current)
    @cancelled_bookings = current_user.bookings_as_visitor.where(status: false)
  end

  def bookings_as_owner
    @bookings_as_owner = current_user.bookings_as_owner
  end

  # def mybookings
  #   @mybookings =
  # end
end
