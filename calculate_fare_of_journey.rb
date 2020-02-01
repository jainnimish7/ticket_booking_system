module CalculateFareOfJourney
  # If source and destination are not initial and last stations
  def remaining_station_fare total_station
    if (total_station > 5)
      remaining_station = (total_station - 5)
      if (remaining_station % 5 == 0)
        additional_charge = (remaining_station / 5) * 5;
      else
        additional_charge = (remaining_station / 5 + 1) * 5;
      end
      print_ticket_with_fare (@base_price + additional_charge)
    else
      print_ticket_with_fare (@base_price)
    end
  end
end
