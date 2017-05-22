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
    category['name'] = 'foods'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'sports'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'entertaiments'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'category4'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'category5'
    category['group'] = 0
    Category.create(category)
    category['name'] = 'category6'
    category['group'] = 0
    Category.create(category)
end


user = {}
10.times do
    user['fullname'] = Faker::Name.name
    user['email'] = Faker::Internet.email
    user['password'] = 'test'
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
