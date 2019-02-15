def nyc_pigeon_organizer(data)
  # write your code here!
  solution = {}

  data[:color].each do |color, names|
    names.each do |name|
      if solution[name] == nil
        solution[name] = {:color => [color.to_s]}
      else solution[name].has_key?(:color)
        solution[name][:color].push(color.to_s)
      end
    end
  end

  data[:gender].each do |gender, names|
    names.each do |name|
      solution[name][:gender] = [gender.to_s]
    end
  end

  data[:lives].each do |location, names|
    names.each do |name|
      solution[name][:lives] = [location]
    end
  end
  return solution
end
