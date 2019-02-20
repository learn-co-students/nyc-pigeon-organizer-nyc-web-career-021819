require 'pry'
def nyc_pigeon_organizer(data)
  result = {}
  data.each do |info, hashs| #info is the first layer hashes :color, :gender, lives
    # binding.pry#hashes is the second layer keys under the color Hash,
              #the value pointed to the names of the pigeons
    hashs.each do |hash, names| #this will give me names of the pigeons through
                                #the keys on the second layer hash under the :color
      # binding.pry
      names.each do |name| #name will be return the each single name
        # binding.pry
        result[name] ||= {} #if result[name] is nil, then result[name] will be
        #assigned to the emoty hash as Key
        # binding.pry
        result[name][info] ||= []
        # binding.pry
        result[name][info] << hash.to_s
        # binding.pry
      end
    end
  end
  result
end
