class City
  attr_accessor :name
  attr_accessor :latitude
  attr_accessor :longtitude
  attr_accessor :visited

  def initialize(name, latitude, longtitude)
    @name = name
    @latitude = latitude
    @longtitude = longtitude
    @visited = false
  end

  def distance(current_city, next_city)
    lat_diff = current_city.latitude - next_city.latitude
    long_diff = current_city.longtitude - next_city.longtitude
    return lat_diff + long_diff
  end

  def nearest_possible_neighbor(graph_of_cities, current_city)
    closest_city = nil
    graph_of_cities.each do |city|
      next if city == current_city
      if distance(current_city, city) < distance(current_city, closest_city)
        closest_city = city
      end
    end
    closest_city
  end
end
