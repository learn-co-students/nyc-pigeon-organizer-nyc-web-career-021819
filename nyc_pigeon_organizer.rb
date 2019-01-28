require "pry"

def nyc_pigeon_organizer(data)
  # write your code here!
  hash = {}
  data.each do |key, value|
    value.each do |type, pigeon|
      pigeon.each do|name|
        if hash.has_key?(name) == false
          hash[name] = {
            :color => [],
            :gender => [],
            :lives => []
             }
        end
      end
    end
  end
  data.each do |key, value|
    value.each do |type, pigeon|
      pigeon.each do |name|
        hash[name][key].push(type.to_s)
      end
    end
  end
  hash
end
