class CrawlController < ApplicationController
	def index
		url = params[:url]
		hostname = URI("http://#{url}").host
		document = Nokogiri::HTML(HTTParty.get("http://#{url}"))

		# binding.pry

		name = document.css('.vcard-fullname').text
		image = document.css('.vcard-avatar img').first.attr('src') rescue nil
		contact_info = document.css('ul .vcard-detail a').first.text rescue nil

		render json: {
			name: name,
			image: image,
			contact_info: contact_info
		}
	end
end