require "pry"

def nyc_pigeon_organizer(data)
  hash ={}
  data.each do |key, value|
    value.each do |details, name|
      name.each do |info|
        hash[info] = {color:[], gender:[], lives:[]}
      end
    end
  end
  data[:color].each do |color, name|
    name.each do |bird_name|
      hash.keys.each do |item|
        if bird_name == item
          hash[item][:color]<< color.to_s
      end
    end
  end
end

data[:gender].each do |bird_gender, name|
  name.each do |bird_name|
    hash.keys.each do |item|
      if bird_name == item
        hash[item][:gender]<< bird_gender.to_s
      end
    end
  end
end

data[:lives].each do |location, name|
  name.each do |address|
    hash.keys.each do |item|
      if address == item
        hash[item][:lives]<< location.to_s
      end
    end
  end
end

hash

end
