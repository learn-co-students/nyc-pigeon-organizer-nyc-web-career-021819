require "pry" 

def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |aspect, detail|
    detail.each do |detail,names|
      names.each do |name|
        pigeon_list[name] = {:color => [], :gender => [], :lives =>[]}
      end
    end
  end
  pigeon_names = pigeon_list.keys
    pigeon_data[:color].each do |pigeon_color, names|
      names.each do |name|
        pigeon_names.each do |pigeon_name|
         if name == pigeon_name
           pigeon_list[pigeon_name][:color] << pigeon_color.to_s
         end
      end 
    end
    pigeon_data[:gender].each do |pigeon_gender, names|
      names.each do |name|
        pigeon_names.each do |pigeon_name|
          if name == pigeon_name
            pigeon_list[pigeon_name][:gender] = [pigeon_gender.to_s]
          end
        end
      end
    end
    pigeon_data[:lives].each do |location, names|
      names.each do |name|
        pigeon_names.each do |pigeon_name|
          if name == pigeon_name
            pigeon_list[pigeon_name][:lives] = [location.to_s]
          end
        end
      end
    end
  end
  pigeon_list
end