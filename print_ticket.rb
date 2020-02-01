module PrintTicket

  # Print ticket details
  def print_ticket_with_fare fare
    puts "----------------------------"
    puts "Purchase Date & Time"
    puts Time.now
    puts @source_station.capitalize
    puts @destination_station.capitalize
    puts "#{get_total_number_of_station} Stops"
    puts "#{fare} Rupees"
    puts "----------------------------"
  end
end
