def nyc_pigeon_organizer(data)
	result = {}

	data.each do |category, pigeons|
		pigeons.each do |sub_category, names|
			names.each do |name|
				result[name] ||= {}
				result[name][category] ||= []
				result[name][category] << sub_category.to_s
			end
		end
	end
	result

end