def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |element|
    if element["status"] == "Winner"
      return element["name"].split(" ").first
    end
  end
end

 def get_contestant_name(data, occupation)
  # code here
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
      end
    end
  end
end

 def count_contestants_by_hometown(data, hometown)
  # code here
 counter = 0
 data.each do |season, array_of_contestants|
   array_of_contestants.each do |contestants|
     if contestants["hometown"] == hometown
       counter += 1
     end
   end
 end
 counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, array_of_contestants|
    array_of_contestants.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

 def get_average_age_for_season(data, season)
  # code here
  ages = []
  ages_as_int= []
  data[season].each do |array_of_contestants|
    ages << array_of_contestants["age"]
  end
  ages.collect do |x|
    ages_as_int << x.to_f
  end
  (ages_as_int.reduce(:+) / ages.length).round(0)
end
