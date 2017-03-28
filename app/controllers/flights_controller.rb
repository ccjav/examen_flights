class FlightsController < ApplicationController
  def index
    @flights = Flight.all
  end

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(user_params)
    if @flight.save
      redirect_to @flight
    else
      render 'new'
    end
  end

  def show
    
  end

  private

    def user_params
      params.require(:flight).permit(:num_flight, :date, :depart, :from, :to, :duration, :cost, :passengers)
    end
end
