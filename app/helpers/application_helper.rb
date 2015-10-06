module ApplicationHelper
	def footer_date
		initial = 2015
		if Time.now.year > 2015
			"2015 – #{Time.now.year}"
		else
			"2015"
		end
	end
end
