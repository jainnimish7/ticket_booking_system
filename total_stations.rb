module TotalStation

  # Get total number of stations between 2 station
  def get_total_number_of_station
    index_of_source = @all_stations.index(@source_station.downcase)
    index_of_destination = @all_stations.index(@destination_station.downcase)
    if (index_of_source && index_of_destination)
      (index_of_destination - index_of_source).abs
    else
      return false
    end
  end
end
