require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, val|
    if key.to_s == "winter"
      holiday_hash[:winter][:christmas].push(supply)
      holiday_hash[:winter][:new_years].push(supply)
end
end 
 holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = ["BBQ", supply]
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  a = holiday_hash[:winter][:christmas]
  b = holiday_hash[:winter][:new_years]
  array = a + b
  array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, hash|
      stringy = season.to_s
      puts stringy.capitalize!
    hash.each do |holi|
      string = holi.to_s
      puts string.capitalize!
end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_hash.each do |key, val|
    val.each do |holiday|
      if holiday[array].includes?("BBQ")
        puts holiday
    end
  end
  end

end







