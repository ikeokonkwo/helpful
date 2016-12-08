# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



postingA = Posting.create!(title:"Brazilian Worker Center", description: "Social Justice Work", 
			latitude: 42.355223, longitude: -71.132446, location:"14 Harvard Ave # 2, Allston, MA 02134",
			phone:"617-783-8001 ext 101", email:"info@braziliancenter.org")

postingB = Posting.create!(title:"St.Petersburg General Hospital",
			 description: "A full service, emergency care facility specializing in senior care, women's health and cardiovascular care in St. Petersburg, FL.", 
			 latitude: 27.805391, longitude: -82.726757, location:"6500 38th Ave N, St. Petersburg, FL 33710", 
			 phone:"(727)-341-4848", email:"anita.brown@hcahealthcare.com")

postingC = Posting.create!(title:"Massachusetts Alliance of Portuguese Speakers (MAPS)", 
			description: "MAPS works with and for the Brazilian, Cabo Verdean, Portuguese and other Portuguese-speaking communities to increase access and remove barriers to health, education and social services through direct services, advocacy, leadership and community development.", 
			latitude: 42.316762, longitude: -71.064949, location:"1046 Cambridge Street, Cambridge, MA 02139", phone: "617-864-7600")

postingD = Posting.create!(title:"BRYE Tutoring", description: "BRYE Tutoring supports recent immigrant and refugee youth in Dorchester through quality instruction and homework help, with a priority on improving English skills.",
			 latitude: 40.637084, longitude: -74.090593, location: "HARVARD YARD
			CAMBRIDGE, MA  02138", email:"PBHA@PBHA.ORG", phone:"(617)-495-5526")

postingE = Posting.create!(title:"Massachusetts General Hospital", description: "Massachusetts General Hospital is the original and largest teaching hospital of Harvard Medical School and a biomedical research facility located in the West End neighborhood of Boston, Massachusetts.", 
			latitude: 42.363154, longitude: -71.068833, location:"Volunteer Department Gray / Bigelow Basement, Suite 015 Boston, MA 02114", 
			phone:"617-726-8540", email:" MGHVOLUNTEER@partners.org")

postingF = Posting.create!(title:"Y2Y Homeless Shelter", description: "Student-run Harvard Square Homeless Shelter (HSHS)", latitude: 42.380327, longitude: -71.138910, 
			location:"1 CHURCH STREET (MIDDLE ENTRANCE) CAMBRIDGE, MA 02138", 
			email:"INFO@Y2YHARVARDSQUARE.ORG", phone: "(617) 864-0795")

postingG = Posting.create!(title:"Habitat for Humanity", description: "Volunteers needed in construction in the Perrine/Liberty no experience necessary! 18 and over", 
			latitude: 25.608592, longitude: -80.338021, location: "3800 NW 22nd Ave.Miami, Florida 33142",
			phone:"(305) 634-3628")

postingH = Posting.create!(title:"St.Petersburg Free Clinic", description: "Maintain an inventory of medical equipment, make small repairs and/or recondition items when possible and process client medical equipment requests and incoming donations.Time/Requirements", 
			latitude: 27.775549, longitude: -82.646101, location:"863 3rd Ave N St. Petersburg, FL 33701", 
			phone: "727-821-1200")

postingI = Posting.create!(title:"Hands on Miami", description: "In order to help organizations - including HandsOn Miami - increase their capacity to continue to meet the growing challenges experienced by our Miami-Dade County community, we are organizing a Skills-Based Volunteer Corps.  The SBVC will engage skilled volunteers of all ages and abilities and help us inspire, equip, and mobilize people to take action to effect positive change in our community in new, fun, and sincerely impactful ways.",
			 latitude: 25.750904, longitude: -80.228652, location: "2103 Coral Way, Miami, FL 33145", 
			 phone: "(305) 504-4510")

postingJ = Posting.create!(title:"Salvador Dalí Museum", description: "Volunteers are an integral part of the success of our Museum operations and programming. Over 225 active volunteers ranging in age from 16 to 90 contribute their time and talents in a variety of ways at the Museum. Students (high school and college) are also welcome to volunteer at The Dali for approved course credit or scholarship requirements.Areas of opportunity include guest relations, education, membership, marketing, operations, evening and day-time special events, and more. Training is provided and volunteers receive special benefits for their service.", 
			latitude: 27.765976, longitude: -82.631479, phone: "(727) 823-3767",
			email: "volunteer.office@thedali.org", location: "1 Dali Blvd, St. Petersburg, FL 33701")


reviewA = Review.create!(name:"Ike Okonkwo", notes: "The women who run the BWC (Natalica, Lenita, Rafa, Dani) are the nicest people ever. Very active in the social justice events in the community. This was a great chance for me to learn about small claims, Imigrant transnationalism, and practice my Portuguese. Will definitely be coming back.", rating:10)

reviewB = Review.create!(name:"Ike Okonkwo", notes: "I volunteered in the ER a few years back and was able to get some really neat hands on bedside expereience and work with some really friendly and helpful healthcare practioners. Speaking spanish is a plus.", rating:7)

reviewC = Review.create!(name:"Beth Morin", notes: "Though I felt at times that MAPS could be more organized and delegate less secretarial tasks, I still really liked the fact that they're flexible and my boss is really chill", rating:6 )


# create_table "postings", force: :cascade do |t|
#     t.decimal  "latitude"
#     t.decimal  "longitude"
#     t.text     "description"
#     t.integer  "user_id"
#     t.string   "title"
#     t.datetime "created_at",  null: false
#     t.datetime "updated_at",  null: false
