class TripsController < ApplicationController
	def index
		begin
			@trips = Trip.all
		rescue
			@trips = nil
		end

	end
end
