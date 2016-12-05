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

# create_table "postings", force: :cascade do |t|
#     t.decimal  "latitude"
#     t.decimal  "longitude"
#     t.text     "description"
#     t.integer  "user_id"
#     t.string   "title"
#     t.datetime "created_at",  null: false
#     t.datetime "updated_at",  null: false
