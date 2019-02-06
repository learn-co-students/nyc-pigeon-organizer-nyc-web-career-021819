def nyc_pigeon_organizer(data)
  pigeon_list = {}                            #creating new hash to store in
    data.each do |key, value|                 #iterate over data
      value.each do |attribute, names|        #iterate over value
        names.each do |name|                  #iterate over names
          
         if !pigeon_list.include?(name)                   #returns true if (name) is present
           pigeon_list[name] = {}                         # create new hash
         end
         if !pigeon_list[name].include?(key)              #returns true if (key) is present
           pigeon_list[name][key] = []                    #create new array
         end
         if !pigeon_list[name][key].include?(attribute)   #returns true if (attribute) is present
           pigeon_list[name][key] << attribute.to_s
           
         end
       end
     end
   end
   pigeon_list
 end
          
          
          
    