class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
  end

  def palaces
    @palaces = Palace.where(user_id: current_user.id)
  end

  def bookings_as_visitor
    @bookings_as_visitor = current_user.bookings_as_visitor
  end

  def bookings_as_owner
    @bookings_as_owner = current_user.bookings_as_owner
  end

  # def mybookings
  #   @mybookings =
  # end
end
