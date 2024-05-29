# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Contact.destroy_all
Project.destroy_all
Skill.destroy_all
Employee.destroy_all

joey = Employee.create(name: "Jose Reyes IV", about_me: "I started my career in the U.S Navy where I found my first passion in medicine as a medical assistant.  The passion for medicine came from the urge to help others, and enjoyment of always learning new things. Working in the E.R as shift team leader with others pushed me to communicate effectively between the doctors and my team members which gave me the ability to build strong relationships with my superiors and my team . After my contract in the Navy ended I wanted a career where I could reach and help others without them having to come to me. Since working in medicine involves working as a team I gravitated towards a career that would still allow me to do that.  My ambition to pursue software development came from unlimited creativity and the possibilities to reach anyone from around the world. My vision is to show people that technology can advance far past the convenience of being able to connect to others quickly and it could be a tool to truly provide assistance that could change generations to come.", resume: "resume link")

Project.create(name: "TattDaddy BE", description: "Tatt Daddy is an app designed to connect users with tattoo artists in order to get pre-designed, flash tattoos in a quick and easy fashion. Users will scroll through different available designs that licensed tattoo artists will upload to the application, select tattoos they would like to get, and get connected with the artist to schedule an appointment, chat about small details of the work, and finalize payment. The goal is to allow tattoo collectors to easily add to their collection and provide artists an opportunity to fill more of their schedule with quick and efficient appointments.

This app was built with a team of 5 developers as the consultancy project for MOD 3 2311, from Turing School of Software and Design.", link: "https://github.com/JackCSweeney/tattdaddy-be", employee_id: joey.id)

Project.create(name: "TattDaddy FE", description: "Front End Repo that is consuming the API we built. Key features from this repo include the use of AWS S3 API for active storage purposes of storing user's uploaded photos, Github OAUTH, and Google Map Gealocator API to find user and artists locations.", link: "https://github.com/JackCSweeney/tattdaddy-fe", employee_id: joey.id)

Contact.create(linkedin: "www.linkedin.com/in/josereyes10", github: "https://github.com/JRIV-10", email: "joeyreyes105@gmail.com", employee_id: joey.id)

Skill.create(primary_lang: "Ruby", framework: "Ruby on Rails", learning: "Golang with Gin")




