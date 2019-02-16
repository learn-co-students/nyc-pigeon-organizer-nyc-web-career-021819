require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

def nyc_pigeon_organizer(data)
  # write your code here!
  newdata = {}
  data.each do |datatype,keynvals|
    #datatype would be :color, #keynvals would be :purple => ["Theo","Peter Jr.", "Lucky"]
    keynvals.each do |datatypedata,names|
      #datatypedata would be :purple, names would be ["Theo","Peter Jr.", "Lucky"]
      names.each do |name|
        if newdata.has_key?(name)
          newdata[name][datatype].push(datatypedata.to_s)
        else
          newdata[name] = {color: [], gender: [], lives: []}
          newdata[name][datatype].push(datatypedata.to_s)
        end
      end
    end
  end
  newdata
end

=begin
First: It should iterate through each key value (color, gender, lives)
For every value it finds, it should check to see if it's in the new
hash.
If it isn't, it should create one with three key value pairs representing
the key values and an empty list. Then, it should push the key value pair to the end of the list.
if it is, it should check the new hash for the relevant key value and push it.
=end
