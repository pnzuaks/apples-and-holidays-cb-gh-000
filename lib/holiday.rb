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
    puts
    puts season.to_s.capitalize! + ":"
    
    hash.each do |holiday, ray|
      
      if holiday.to_s == "new_years" || holiday.to_s == "memorial_day"
        ny = holiday.to_s.sub!("_", " ")
        arr = ny.split(" ")
        arr.each do |word|
          word.capitalize!
      end
      puts
       print arr.join(" ") + ":"
        
        
      elsif holiday.to_s == "fourth_of_july"
        first = holiday.to_s.sub!("_", " ")
        fourth = first.to_s.sub!("_", " ")
        arr = fourth.split(" ")
        arr.each do |word|
          word.capitalize!
      end
      puts
       print arr.join(" ") + ":"
       
      else  puts
        print holiday.to_s.capitalize! + ":"
    end
 
    ray.each do |k|
        print " "+ k 
        
  end
  puts
  end
end 
end
     

def all_holidays_with_bbq(holiday_hash)
  array = []
    holiday_hash.each do |season, hash|
    hash.each do |holiday, ray|
      ray.each do |k|
        if k == "BBQ"
          array.push(holiday)
    end
  end
  end
end 
array
end







