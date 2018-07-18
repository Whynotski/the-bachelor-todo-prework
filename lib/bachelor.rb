require 'pry'


def get_first_name_of_season_winner(data, season)
  # code here
data[season].each do |contestant|
  if contestant["status"] == "Winner"
  return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
  info.each do |contestant|
    if contestant["occupation"] == occupation
    return contestant["name"]
    end
  end
end
end

 def count_contestants_by_hometown(data, hometown)
count =0
  data.each do |season, info|
  info.each do |contestant|
     if contestant["hometown"] == hometown
       count+=1
     end
   end
   end
   return count
end


def get_occupation(data, hometown)
  data.each do |season, info|
  info.each do |contestant|
    if contestant["hometown"] == hometown
    return contestant["occupation"]
    end
  end
  end
end


def get_average_age_for_season(data, season)

array =[]
  data.each do |series, info|
    if series == season
binding.pry
  info.each do |contestant|
     array << contestant["age"].to_i
  end
end
  end
    sum_age = array.inject{|sum, element| sum + element}.to_i
    denominator = array.size
    ave_age = sum_age/denominator
    binding.pry
    return ave_age
end
