def nyc_pigeon_organizer(data)
  # write your code here!
  
   bird_names = data[:gender][:male] + data[:gender][:female]
   
   new_hash = {}

   bird_names.each do |name|
    new_hash[name] = {}

     data.each do |key, value|
      new_hash[name][key] = []

       value.each do |attribute, bird_names|
        new_hash[name][key] << attribute.to_s if bird_names.include?(name)
      end
    end
  end

   return new_hash
end