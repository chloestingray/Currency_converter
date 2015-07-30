require "colorize"

#as of July 13, 2015 4:40 pm
#PREP
conversion_rates = 
  {"USD" => 1,
  "EUR" => 0.91,
  "JPY" => 123.44,
  "GBP" => 0.65,
  "CHF" => 0.95,
  "CAD" => 1.27,
  "AUD" => 1.35,
  "ZAR" => 12.44
    }

def convert(rate_hash, us_dollars, abbreviation) #converts USD to currency of choice
  rate_hash.each do |code, rate|
    if code == abbreviation
      return "#{us_dollars} USD".red + " equals " + "#{us_dollars.to_i * rate} #{code}.".blue
    end
  end
end

#RUN

puts "United States Dollar (USD)".green
puts "Euro (EUR)".green
puts "Japanese Yen (JPY)".green
puts "Great British Pound (GBP)".green
puts "Swiss Franc (CHF)".green
puts "Canadian Dollar (CAD)".green
puts "Australian Dollar (AUD)".green
puts "South African Rand (ZAR)".green
puts ""


puts "Enter the amount of USD you'd like to convert."
    usd = gets.chomp
    puts "Enter the three letter code for the currency you'd like to convert to."
    abbr_code = gets.chomp

    puts convert(conversion_rates, usd, abbr_code)


#      puts "Would you like to convert more USD?"
#      converting = gets.chomp.downcase
