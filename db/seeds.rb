# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


require "faker"

# Generate data for Section
10.times do
    name = Faker::Name.name
    short_name = Faker::Name.initials(number: 2)
  
    # Create a new section
    section = Section.new(
      name: name,
      short_name: short_name,
      state: "activated"
    )
  
    # Save the parent section
    if section.save
      puts "Parent section saved successfully!"
  
      # Create a child section with different data
      child_name = Faker::Name.name
      child_short_name = Faker::Name.initials(number: 2)
  
      child_section = Section.new(
        name: child_name,
        short_name: child_short_name,
        state: "activated",
        ancestry: section.id
      )
  
      if child_section.save
        puts "Child section saved successfully!"
      else
        puts "Error saving child section: #{child_section.errors.full_messages.join(', ')}"
      end
  
    else
      puts "Error saving parent section: #{section.errors.full_messages.join(', ')}"
    end
  end
  





# Generate data for Schedule
# 10.times do
#     event = Faker::Lorem.sentence(word_count: 3)
#     start_date = Faker::Date.between(from: 100.days.ago, to: Date.today)
#     end_date = Faker::Date.between(from: 100.days.ago, to: Date.today)

#     schedule = Schedule.new(
#         event: event,
#         start_date: start_date,
#         end_date: end_date,
#     )

#     if schedule.save
#         puts "Schedule saved successfully!"
#     else
#         puts "Error saving schedule: #{schedule.errors.full_messages.join(', ')}"
#     end
# end

10.times do
    app_name = Faker::App.name

    app = App.new(
        app_name: app_name
    )

    if app.save
        puts "App saved successfully!"
    else
        puts "Error saving App: #{app.errors.full_messages.join(', ')}"
    end
end

10.times do
    library_name = Faker::Book.title

    library = Library.new(
        library_name: library_name
    )

    if library.save
        puts "Library saved successfully!"
    else
        puts "Error saving Library: #{library.errors.full_messages.join(', ')}"
    end
end

# Reindex sunspot after generating data
system('rake sunspot:reindex')