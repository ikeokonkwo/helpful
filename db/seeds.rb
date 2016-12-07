# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



postingA = Posting.create!(title:"Brazilian Worker Center", description: "Social Justice Work", latitude: 42.355223, longitude: -71.132446)
postingB = Posting.create!(title:"St.Petersburg General Hospital", description: "Hospital Setting Volunteer Experience", latitude: 27.805391, longitude: -82.726757)
postingC = Posting.create!(title:"Massachusetts Alliance of Portuguese Speakers (MAPS)", description: "Uplifting the Portuguese Speaking Community in Boston", latitude: 42.316762, longitude: -71.064949)
postingD = Posting.create!(title:"BRYE Tutoring", description: "BRYE Tutoring supports recent immigrant and refugee youth in Dorchester through quality instruction and homework help, with a priority on improving English skills.", latitude: 40.637084, longitude: -74.090593)
postingE = Posting.create!(title:"Massachusetts General Hospital", description: "Hospital Setting Volunteer Experience", latitude: 42.363154, longitude: -71.068833)
postingF = Posting.create!(title:"Y2Y Homeless Shelter", description: "Student-run Harvard Square Homeless Shelter (HSHS)", latitude: 42.380327, longitude: -71.138910)

postingG = Posting.create!(title:"Habitat for Humanity", description: "Volunteers needed in construction in the Perrine/Liberty no experience necessary! 18 and over", latitude: 25.608592, longitude: -80.338021)
postingH = Posting.create!(title:"St.Petersburg Free Clinic", description: "Maintain an inventory of medical equipment, make small repairs and/or recondition items when possible and process client medical equipment requests and incoming donations.
Time/Requirements", latitude: 27.775549, longitude: -82.646101)
postingI = Posting.create!(title:"Hands on Miami", description: "In order to help organizations - including HandsOn Miami - increase their capacity to continue to meet the growing challenges experienced by our Miami-Dade County community, we are organizing a Skills-Based Volunteer Corps.  The SBVC will engage skilled volunteers of all ages and abilities and help us inspire, equip, and mobilize people to take action to effect positive change in our community in new, fun, and sincerely impactful ways.", latitude: 25.750904, longitude: -80.228652)
postingJ = Posting.create!(title:"Salvador Dalí Museum", description: "Volunteers are an integral part of the success of our Museum operations and programming. Over 225 active volunteers ranging in age from 16 to 90 contribute their time and talents in a variety of ways at the Museum. Students (high school and college) are also welcome to volunteer at The Dali for approved course credit or scholarship requirements.Areas of opportunity include guest relations, education, membership, marketing, operations, evening and day-time special events, and more. Training is provided and volunteers receive special benefits for their service.", latitude: 27.765976, longitude: -82.631479)

# create_table "postings", force: :cascade do |t|
#     t.decimal  "latitude"
#     t.decimal  "longitude"
#     t.text     "description"
#     t.integer  "user_id"
#     t.string   "title"
#     t.datetime "created_at",  null: false
#     t.datetime "updated_at",  null: false
