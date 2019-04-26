# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    Client.create(name: 'Clark Kent', email: 'clark@krypton.com', password: 'superman')
    Client.create(name: 'Lois Lane', email: 'lois@dailyplanet.com', password: 'reporter')
    Client.create(name: 'Betty Boop', email: 'bboop@talkartoon.com', password: 'boopadoo')
    Client.create(name: 'Bugs Bunny', email: 'bugs@looneytunes.com', password: 'whatsupdoc')
    Client.create(name: 'Jessica Rabbit', email: 'jess@rabbit.com', password: 'hellostranger')
    Client.create(name: 'Rebecca Sunnybrook', email: 'sunnygirl@me.com', password: 'becky123')

    Staff.create(name: 'Max', bio: 'Spa owner and master barber for 30 years')
    Staff.create(name: 'Roberto', bio: 'Hair Professional Artist, specializes in hair color formulation and application')
    Staff.create(name: 'Lulabeth', bio: 'Lulabeth has 20 years experience in hair styling and cuts.')
    Staff.create(name: 'Jackson', bio: 'L Oreal professional colorist with an extensive modeling clientele.')
    Staff.create(name: 'Rebecca', bio: 'Rebecca is an award winning professional Nail Artist.')
    Staff.create(name: 'Lindsey', bio: ' Nail design and expert manicurist/pedicurist')
    Staff.create(name: 'Megan', bio: ' Hair stylist specializing in special occassions such as weddings, formal affairs')
    Staff.create(name: 'Jake', bio: ' Massage therapist, tanning specialist')
    Staff.create(name: 'Olga', bio: 'Esthetician, facials, massage therapy and aromatherapy')

    Service.create(name: 'Barber')
    Service.create(name: 'Hair Color')
    Service.create(name: 'Hair Cut')
    Service.create(name: 'Hair Style')
    Service.create(name: 'Facial')
    Service.create(name: 'Exfoliation')
    Service.create(name: 'Full Body Massage')
    Service.create(name: 'Neck/Shoulder Massage')
    Service.create(name: 'Nail Design')
    Service.create(name: 'Manicure')
    Service.create(name: 'Pedicure')
    Service.create(name: 'Waxing')
    Service.create(name: 'Tanning Bed')
    Service.create(name: 'Tanning Spray')
    
    
    