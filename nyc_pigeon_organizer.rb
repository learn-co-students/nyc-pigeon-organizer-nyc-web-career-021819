
def nyc_pigeon_organizer(data)
  # write your code here!
  newhash = {}
  data.each do |k1,v1|
    v1.each do |k2,v2|
      v2.each do |name|
        if newhash.has_key?(name)
          newhash[name][k1].push(k2.to_s)
        else
          newhash[name] = {color:[], gender:[], lives: []}
          newhash[name][k1].push(k2.to_s)
        end
      end
    end
  end
  newhash
end
