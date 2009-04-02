desc "Load some fake data into db"
task :load_data => [:environment] do
  
  require 'faker'
  include Faker

  times = (ENV['TIMES'] || 555).to_i
  
  colors = %w{
    black
    blue  
    brown  
    clear  
    cyan  
    darkGray  
    gray  
    green  
    lightGray  
    magenta  
    orange  
    purple  
    red  
    white  
    yellow
  }
  
  puts "Generating fake data"
  puts "#{times / 10} groups being generated" 
  puts "#{times} people being generated" 
  
  (times / 10).times do
    puts Group.create!(:name => Company.name, :color => colors[rand(colors.size)]).inspect
  end
  
  # Personid: integer, first_name: string, last_name: string, group_id: integer, post_code: string, country: string, address: string, city: string, created_at: datetime, updated_at: datetime, latitude: float, longitude: float, image_url: string
  
  times.times do |time|
    group_id = (times % (time + 1)) + 1
    puts Person.create!(
      :group_id => group_id,
      :first_name => Name.first_name,
      :last_name => Name.last_name,
      :post_code => Address.zip_code,
      :country => "United States of America",
      :address => Address.street_address,
      :city => Address.city,
      :latitude => (rand(180000000000) / 1000000000.0) - 90.0, # valid from -90.0 to 90.0,
      :longitude => (rand(360000000000) / 1000000000.0) - 180.0 # valid from -180.0 to 180.0
    ).inspect
  end
  
end