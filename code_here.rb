require 'pry'

bob_dylan_albums = [
    {title: "The Freewheelin' Bob Dylan", tracks: 13, year: 1963},
    {title: "The Times They Are A-Changin'", tracks: 10, year: 1964},
    {title: "Another Side of Bob Dylan", tracks: 11, year: 1964},
    {title: "Bringing It All Back Home", tracks: 11, year: 1965},
    {title: "Highway 61 Revisited", tracks: 9, year: 1965}
]


def run(array)
    puts "Hello! Welcome to the Bob Dylan partial album information center."
    puts "What would you like to do?"
        puts "Press 1 to see a list of albums"
        puts "Press 2 to find out the year of an album"
        puts "Press 3 to find an album(s) by year"

    input = gets.chomp

    if input == "1"
        array.map do |album|
            puts album[:title]
        end
    elsif input == "2"
        puts "Which album?"
        name = gets.chomp
        album = array.find {|album| album[:title] == name}
        if album
            puts album[:year]
        else
            puts "Please enter a valid album"   
        end
    elsif input == "3"
        puts "Which year?"
        year = gets.chomp
        albums = array.select {|element| element[:year] == year.to_i} 
        if albums
            puts albums.each {|element| element[:name]}
        else
            puts "Please enter a valid year"
        end
    else
        puts "Please enter a valid number"
    end
end

run(bob_dylan_albums)