class EventsController < ApplicationController
	def index
    	@events = Event.all.reverse
  	end

  	def push
  		puts "push path"
  		User.first.id
  		event = Event.new(user_id: User.first.id, category_id: Category.first.id, name: Faker::Food.ingredient, description: Faker::Lorem.sentence)
  		event.save
  	end
end
