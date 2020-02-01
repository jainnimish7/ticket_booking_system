require_relative 'calculate_fare_of_journey'
require_relative 'print_ticket'
require_relative 'total_stations'
require 'yaml'

# Class Ticket Booking System
class TicketBookingSystem
  include CalculateFareOfJourney
  include PrintTicket
  include TotalStation

  # Initialize the source and destination stations and the base price here
  def initialize()
    stations = YAML.load(File.read('station_names.yaml'))
    @all_stations =  stations["stations"]
    puts "Enter source station "
    @source_station = gets.chomp
    puts "Enter destination station "
    @destination_station = gets.chomp
    @base_price = 10
  end

  # Print ticket details from sounce and destination station
  def print_ticket_details
    total_station = get_total_number_of_station
    if (total_station)
      (total_station > 15) ? print_ticket_with_fare(20) : remaining_station_fare(total_station)
    else
      puts "Wrong stations entered"
    end
  end
end

TicketBookingSystem.new.print_ticket_details
