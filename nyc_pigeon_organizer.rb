def nyc_pigeon_organizer(data)
	main_hash = {}
	data.each do |category, info|
		data[:color].collect do |key, value|
			value.each do |name|
				main_hash["#{name}"] = {:color => [], :gender => [], :lives => []}
			end
		end
	end
	data[:color].each do |category, info|
		info.each do |name|
			if data[:color][category].include?(name)
				main_hash[name][:color] << category.to_s
			end
		end
	end
	data[:gender].each do |category, info|
		info.each do |name|
			if data[:gender][category].include?(name)
				main_hash[name][:gender] << category.to_s
			end
		end
	end
	data[:lives].each do |category, info|
		info.each do |name|
			if data[:lives][category].include?(name)
				main_hash[name][:lives] << category.to_s
			end
		end
	end
	main_hash
end
