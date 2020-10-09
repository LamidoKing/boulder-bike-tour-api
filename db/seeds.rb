# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Rider.delete_all
Admin.delete_all
Submission.delete_all

admin = Admin.create(
    email: "kinglamido@gmail.com",
    password: "lamido"
)

puts(admin.id)

rider1 = Rider.create(
    first_name: "Dustin",
    last_name: "Green",
    city_of_origin: "Hickory Hills",
    state_of_origin: "IL",
    latitude: 40.00,
    longitude: -105.35,
    admin_id: admin.id,
    )
    rider1.photo.attach(io: File.open("/home/lmd/Downloads/r1.jpg"), filename: 'r1.jpg', content_type: 'image/jpg')

rider2 = Rider.create!(
    first_name: "Jason",
    last_name: "Finn",
    city_of_origin: "Huntington Beach",
    state_of_origin: "CA",
    latitude: 39.95,
    longitude: -105.24,
    admin_id: admin.id,
    )
    rider2.photo.attach(io: File.open("/home/lmd/Downloads/r2.jpg"), filename: 'r2.jpg', content_type: 'image/jpg')

rider3 = Rider.create!(
    first_name: "Howard",
    last_name: "Thompson",
    city_of_origin: "Hale",
    state_of_origin: "MO",
    latitude: 40.06,
    longitude: -105.26,
    admin_id: admin.id,
    )
    rider3.photo.attach(io: File.open("/home/lmd/Downloads/r3.jpg"), filename: 'r3.jpg', content_type: 'image/jpg')

rider4 = Rider.create!(
    first_name: "Maggie",
    last_name: "Lantz",
    city_of_origin: "Dublin",
    state_of_origin: "OH",
    latitude: 40.03,
    longitude: -105.23,
    admin_id: admin.id,
    )
    rider4.photo.attach(io: File.open("/home/lmd/Downloads/r4.jpg"), filename: 'r4.jpg', content_type: 'image/jpg')

rider5 = Rider.create!(
    first_name: "Lawrence",
    last_name: "Duran",
    city_of_origin: "Fort Myers",
    state_of_origin: "FL",
    latitude: 40.04,
    longitude: -105.23,
    admin_id: admin.id,
    )
    rider5.photo.attach(io: File.open("/home/lmd/Downloads/r5.jpg"), filename: 'r5.jpg', content_type: 'image/jpg')

rider6 = Rider.create!(
    first_name: "Irene",
    last_name: "Molina",
    city_of_origin: "Tucson",
    state_of_origin: "AZ",
    latitude: 39.96,
    longitude: -105.22,
    admin_id: admin.id,
    )
    rider6.photo.attach(io: File.open("/home/lmd/Downloads/r6.jpg"), filename: 'r6.jpg', content_type: 'image/jpg')


rider7 = Rider.create!(
    first_name: "Nancy",
    last_name: "Garner",
    city_of_origin: "Baltimore",
    state_of_origin: "MD",
    latitude: 39.98,
    longitude: -105.21,
    admin_id: admin.id,
    )
    rider7.photo.attach(io: File.open("/home/lmd/Downloads/r1.jpg"), filename: 'r1.jpg', content_type: 'image/jpg')

rider8 = Rider.create!(
    first_name: "Tara",
    last_name: "Taylor",
    city_of_origin: "Minneapolis",
    state_of_origin: "MN",
    latitude: 40.00,
    longitude: -105.25,
    admin_id: admin.id,
    )
    rider8.photo.attach(io: File.open("/home/lmd/Downloads/r2.jpg"), filename: 'r2.jpg', content_type: 'image/jpg')

rider9 = Rider.create!(
    first_name: "Alejandro",
    last_name: "Smith",
    city_of_origin: "Scarborough",
    state_of_origin: "ME",
    latitude: 40.02,
    longitude: -105.26,
    admin_id: admin.id,
    )
    rider9.photo.attach(io: File.open("/home/lmd/Downloads/r3.jpg"), filename: 'r3.jpg', content_type: 'image/jpg')

rider10 = Rider.create!(
    first_name: "Tricia",
    last_name: "Renshaw",
    city_of_origin: "Mystic",
    state_of_origin: "CT",
    latitude: 40.02,
    longitude: -105.30,
    admin_id: admin.id,
    )
    rider10.photo.attach(io: File.open("/home/lmd/Downloads/r4.jpg"), filename: 'r4.jpg', content_type: 'image/jpg')

rider11 = Rider.create!(
    first_name: "Travis",
    last_name: "Cook",
    city_of_origin: "Twin Lakes",
    state_of_origin: "WI",
    latitude: 40.01,
    longitude: -105.20,
    admin_id: admin.id,
    )
    rider11.photo.attach(io: File.open("/home/lmd/Downloads/r5.jpg"), filename: 'r5.jpg', content_type: 'image/jpg')

rider12 = Rider.create!(
    first_name: "Joan",
    last_name: "Brooks",
    city_of_origin: "Norfolk",
    state_of_origin: "VA",
    latitude: 39.98,
    longitude: -105.24,
    admin_id: admin.id,
    )
    rider12.photo.attach(io: File.open("/home/lmd/Downloads/r6.jpg"), filename: 'r6.jpg', content_type: 'image/jpg')


rider13 = Rider.create!(
    first_name: "Joseph",
    last_name: "Rodgers",
    city_of_origin: "Wayne",
    state_of_origin: "NJ",
    latitude: 39.99,
    longitude: -105.25,
    admin_id: admin.id,
    )
    rider13.photo.attach(io: File.open("/home/lmd/Downloads/r1.jpg"), filename: 'r1.jpg', content_type: 'image/jpg')

rider14 = Rider.create!(
    first_name: "Matthew",
    last_name: "Gregson",
    city_of_origin: "Brashear",
    state_of_origin: "MO",
    latitude: 40.01,
    longitude: -105.29,
    admin_id: admin.id,
    )
    rider14.photo.attach(io: File.open("/home/lmd/Downloads/r2.jpg"), filename: 'r2.jpg', content_type: 'image/jpg')

rider15 = Rider.create!(
    first_name: "Katie",
    last_name: "Dunlap",
    city_of_origin: "Marion",
    state_of_origin: "VA",
    latitude: 39.97,
    longitude: -105.27,
    admin_id: admin.id,
    )
    rider15.photo.attach(io: File.open("/home/lmd/Downloads/r3.jpg"), filename: 'r3.jpg', content_type: 'image/jpg')

rider16 = Rider.create!(
    first_name: "Leo",
    last_name: "Howard",
    city_of_origin: "Dallas",
    state_of_origin: "TX",
    latitude: 39.97,
    longitude: -105.33,
    admin_id: admin.id,
    )
    rider16.photo.attach(io: File.open("/home/lmd/Downloads/r4.jpg"), filename: 'r4.jpg', content_type: 'image/jpg')

rider17 = Rider.create!(
    first_name: "Maria",
    last_name: "Baisden",
    city_of_origin: "Raleigh",
    state_of_origin: "NC",
    latitude: 40.00,
    longitude: -105.29,
    admin_id: admin.id,
    )
    rider17.photo.attach(io: File.open("/home/lmd/Downloads/r5.jpg"), filename: 'r5.jpg', content_type: 'image/jpg')

rider18 = Rider.create!(
    first_name: "Sandy",
    last_name: "Townsend",
    city_of_origin: "Newport",
    state_of_origin: "PA",
    latitude: 40.05,
    longitude: -105.30,
    admin_id: admin.id,
    )
    rider18.photo.attach(io: File.open("/home/lmd/Downloads/r6.jpg"), filename: 'r6.jpg', content_type: 'image/jpg')

rider19 = Rider.create!(
    first_name: "Melinda",
    last_name: "Stephenson",
    city_of_origin: "Kahului",
    state_of_origin: "HI",
    latitude: 39.99,
    longitude: -105.31,
    admin_id: admin.id,
    )
    rider19.photo.attach(io: File.open("/home/lmd/Downloads/r6.jpg"), filename: 'r6.jpg', content_type: 'image/jpg')

rider20 = Rider.create!(
    first_name: "Jason",
    last_name: "Nichols",
    city_of_origin: "Alexandria",
    state_of_origin: "VA",
    latitude: 40.01,
    longitude: -105.32,
    admin_id: admin.id,
    )
    rider20.photo.attach(io: File.open("/home/lmd/Downloads/r2.jpg"), filename: 'r2.jpg', content_type: 'image/jpg')

    puts "Created Riders"

    20.times do
      Faker::Config.random = Random.new(50)
        submission = Submission.create!(
          first_name: Faker::Name.first_name,
          last_name: Faker::Name.last_name,
          email: Faker::Internet.unique.email,
          slogan: Faker::Lorem.sentence(word_count: 3)
        )
        puts "Created a brand new product: #{submission.slogan}"
      end
