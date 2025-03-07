class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :profil]

  def home
    if params[:query].present?
      @palaces = Palace.search_by_location(params[:query])
    else
      @palaces = Palace.all
    end
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
    @manager_past_bookings = current_user.bookings_as_owner.where("end_date < ?", Date.current)
    @manager_future_bookings = current_user.bookings_as_owner.where("begin_date > ?", Date.current)
    @manager_cancelled_bookings = current_user.bookings_as_owner.where(status: false)
  end

  def profil
    @user = current_user
  end

  # def mybookings
  #   @mybookings =
  # end
end
