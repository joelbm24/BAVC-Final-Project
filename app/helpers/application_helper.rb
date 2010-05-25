# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
	def google_map(address, options = {})
		size = options[:size] ||= "512x512"
		color = options[:color] ||= "red"
		image_tag "http://maps.google.com/maps/api/staticmap?size=#{size}&maptype=roadmap&markers=size:large|color:#{color}|#{address}&sensor=false"
	  end
	def google_graph(like, dislike)
		image_tag "http://chart.apis.google.com/chart?cht=p&chs=250x100&chd=t:#{like},#{dislike}&chl=Like|Dislike"
	end
end
