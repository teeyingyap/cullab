# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

# EventUser.delete_all
# Category.delete_all
# Event.delete_all
# User.delete_all
# UserCategory.delete_all

category = {}
ActiveRecord::Base.transaction do
    category['name'] = 'FOOD'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'SPORTS'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'ENTERTAINMENT'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'WORK'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'CHARITY'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'TRAVEL'
    category['group'] = 0
    Category.create(category)
end

subcategory = {}

ActiveRecord::Base.transaction do
    subcategory['category_id'] = 1
    subcategory['name'] = 'Breakfast'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/breakfast.jpg")
    Subcategory.create(subcategory)
   	subcategory['category_id'] = 1
    subcategory['name'] = 'Brunch'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/brunch.jpg")
    Subcategory.create(subcategory)
   	subcategory['category_id'] = 1
    subcategory['name'] = 'Lunch'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/lunch.jpg")
    Subcategory.create(subcategory)
   	subcategory['category_id'] = 1
    subcategory['name'] = 'Tea'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/tea.jpg")
    Subcategory.create(subcategory)
   	subcategory['category_id'] = 1
    subcategory['name'] = 'Dinner'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/dinner.jpg")
    Subcategory.create(subcategory)
   	subcategory['category_id'] = 1
    subcategory['name'] = 'Others..'
    uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/FOOD/food-others.jpg")
    Subcategory.create(subcategory)

    subcategory['category_id'] = 2
    subcategory['name'] = 'Basketball'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/basketball.jpeg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Badminton'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/badminton.jpeg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Football'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/football.jpeg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Futsal'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/futsal.jpg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Ping-Pong'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/pingpong.jpeg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Jogging'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/jogging.jpg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Cycling'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/cycling.jpg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Trekking'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/trekking.jpg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Yoga'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/yoga.jpeg")

    Subcategory.create(subcategory)
   	subcategory['category_id'] = 2
    subcategory['name'] = 'Others..'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/SPORTS/sports-others.jpg")

    Subcategory.create(subcategory)


    subcategory['category_id'] = 3
    subcategory['name'] = 'Night Out'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/ENTERTAINMENT/nightout.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 3
    subcategory['name'] = 'Movie'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/ENTERTAINMENT/movie.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 3
    subcategory['name'] = 'Concert'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/ENTERTAINMENT/concert.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 3
    subcategory['name'] = 'Theatre Play'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/ENTERTAINMENT/theatreplay.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 3
    subcategory['name'] = 'Others..'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/ENTERTAINMENT/entertainment-others.jpg")

    Subcategory.create(subcategory)

    subcategory['category_id'] = 4
    subcategory['name'] = 'Discussion'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/WORK/discussion.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 4
    subcategory['name'] = 'Others..'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/WORK/work-others.jpg")

    Subcategory.create(subcategory)

    subcategory['category_id'] = 5
    subcategory['name'] = 'Fundraiser'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/CHARITY/fundraiser.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 5
    subcategory['name'] = 'Others..'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/CHARITY/fundraiser-others.jpg")

    Subcategory.create(subcategory)

    subcategory['category_id'] = 6
    subcategory['name'] = 'Leisure'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/TRAVEL/leisure.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 6
    subcategory['name'] = 'Business'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/TRAVEL/business.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 6
    subcategory['name'] = 'Backpacking'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/TRAVEL/backpacking.jpg")

    Subcategory.create(subcategory)
    subcategory['category_id'] = 6
    subcategory['name'] = 'Others..'
        uploader = PhotoUploader.new
    subcategory['photo'] = File.open("app/assets/images/events/TRAVEL/travel-others.jpg")

    Subcategory.create(subcategory)

end

user = {}
10.times do
    user['fullname'] = Faker::Name.name
    user['email'] = Faker::Internet.email
    user['password'] = 'test'
    user['avatar'] = "https://firebasestorage.googleapis.com/v0/b/finalproject2-bf999.appspot.com/o/images%2Fcat_news.jpg?alt=media&token=e9db3143-7d3b-4a70-b467-0b8a3f701d49"
    User.create(user)
end

uids = []
User.all.each { |u| uids << u.id }
cids = []
Category.all.each { |c| cids << c.id }

event = {}
ActiveRecord::Base.transaction do
	20.times do
		cid = cids.sample
	    event['name'] = Faker::Food.ingredient
	    event['name'] = Faker::Vehicle.manufacture if cid ==2
	    event['name'] = Faker::Music.instrument if cid ==3

	    event['venue'] = Faker::Address.street_name
	    event['description'] = 'TESTESTSETSETSETESTSETSETSTETESTSETESTSETSETSETESTESTESESTSETSETESTES'
	    event['event_time'] = Faker::Time.between(Date.today, 50.days.after)
	    event['user_id'] = uids.sample
	  	event['category_id'] = cid
	  	event['subcategory_id'] = Subcategory.find_by(category_id: cid).id
	    Event.create(event)
	end
end

eids = []
Event.all.each { |e| eids << e.id }

user_category = {}
ActiveRecord::Base.transaction do
	20.times do
	    user_category['user_id'] = uids.sample
	  	user_category['category_id'] = cids.sample
	    UserCategory.create(user_category)
	end
end

event_user = {}
ActiveRecord::Base.transaction do
	20.times do
	    event_user['user_id'] = uids.sample
	  	event_user['event_id'] = eids.sample
	    EventUser.create(event_user)
	end
end
