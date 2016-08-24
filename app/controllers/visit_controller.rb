class VisitController < ApplicationController
	def index
		@network = Network.find_by_slug(params[:slug])
		redirect_to "http://" + @network.url
	end
end