def get_first_name_of_season_winner(data, season)
  nameWinner = []
  
  data.each do |sazon,items|
    if sazon == season
      items.each do |x|
        x.each do |itemsA,val|
          if val == "Winner"
            nameWinner << x['name']
          end
        end
      end
    end
  end
  
  nameWinner = nameWinner[0].split(" ")
  return nameWinner[0]
end

def get_contestant_name(data, occupation)
  data.each do |sazon,items|
    items.each do |x|
      x.each do |itemsA,val|
        if val == occupation
          return x['name']
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  domoTotal = 0
  
  data.each do |sazon,items|
    items.each do |x|
      x.each do |itemsA,val|
        if val == hometown
          domoTotal += 1
        end
      end
    end
  end
  
  return domoTotal
end

def get_occupation(data, hometown)
  data.each do |sazon,items|
    items.each do |x|
      x.each do |itemsA,val|
        if val == hometown
          return x['occupation']
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  mathyAge = []
  mathyAgeInt = []
  mathyAgeAvg = 0
  
  data.each do |sazon,items|
    if sazon == season
      items.each do |x|
        x.each do |itemsA,val|
          if itemsA == "age"
            mathyAge << x['age']
          end
        end
      end
    end
  end
  
  mathyAge.each do |x|
    mathyAgeInt << x.to_f
  end
  
  mathyAgeInt.each do |x|
    mathyAgeAvg += x
  end
  
  return (mathyAgeAvg / mathyAgeInt.size).round(0)
end
