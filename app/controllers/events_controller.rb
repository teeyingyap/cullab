class EventsController < ApplicationController
	def index
    	@events = Event.recent
  	end

  	# only for development environment
  	def push
  		event = Event.new(user_id: User.first.id, category_id: Category.first.id, name: Faker::Food.ingredient, description: Faker::Lorem.sentence, event_time: Faker::Time.between(Date.today, 50.days.after))
  		event.save
  	end
end
