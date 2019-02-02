
#pigeon_data = {
#  :color => {
#    :purple => ["Theo", "Peter Jr.", "Lucky"],
#    :grey => ["Theo", "Peter Jr.", "Ms. K"],
#    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
#    :brown => ["Queenie", "Alex"]
#  },
#  :gender => {
#    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
#    :female => ["Queenie", "Ms. K"]
#  },
#  :lives => {
#    "Subway" => ["Theo", "Queenie"],
#    "Central Park" => ["Alex", "Ms. K", "Lucky"],
#    "Library" => ["Peter Jr."],
#    "City Hall" => ["Andrew"]
#  }
#}

def nyc_pigeon_organizer(data)
  #collect pidgeon names
  pidgeon_names_a = []
  organized_pidgeons = {}
  data[:lives].each do |area, names|
    names.each do |element|
      pidgeon_names_a.push(element)
    end
  end
  puts pidgeon_names_a

  #create organized hash
  pidgeon_names_a.each do |element|
    organized_pidgeons[element] = {}
  end
  puts organized_pidgeons

  #adds data types
  organized_pidgeons.each do |pidgeon, pdata|
    data.each do |datatype, dataset|
      organized_pidgeons[pidgeon][datatype] = {}
    end
  end
  puts organized_pidgeons

  #adds data type values one at a time by searching the names in that data type, and adding the value of that data type as the value if there is a name match
  organized_pidgeons.each do |pidgeon, pdata|
    pdata.each do |pdatatype, pvalue|
      organized_pidgeons[pidgeon][pdatatype] = []
      data.each do |datatype, dataset|
        dataset.each do |key, values|
          #problem is I am using all the same values
          if values.include?(pidgeon) && datatype == pdatatype
            organized_pidgeons[pidgeon][pdatatype].push(key.to_s)
          end
        end
      end
    end
  end
  puts organized_pidgeons

  return organized_pidgeons




end