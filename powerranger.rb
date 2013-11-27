class Person
	attr_accessor :scream, :run, :caffeine_level, :name, :drink_coffee

	def initialize(name="Power Ranger", caffeine_level=500)
		@name = name
		@caffeine_level = caffeine_level
	end

	def run(distance)
		@caffeine_level -= distance/20
		puts "I am headed your way now. Good thing I had my coffee today."
	end

	def scream(exclamation)
		puts exclamation
	end

	def drink_coffee(caffeine)
		@caffeine_level += caffeine
		puts "This coffee is damn good. I'm sure to be saving people soon!"
	end
end

class PowerRanger < Person
	attr_accessor :punch, :rest

	def initialize(strength, color)
		@strength = strength
		@color = color
	end

	def punch(person)
		@caffeine_level -= 10 if @caffeine_level
		person.scream("Oh no!")
		person.run(5)

		if @strength > 5
			person.scream("Ouch!")
			person.run(20)
		else
			puts "This may be a fair fight..."
		end
	end

	def rest
		puts "I need a break after saving a life, please let me rest."
	end

	def self.use_megazord(person)
		@caffeine_level -= 100
		person.scream("Oh no!")
		person.run(5)

		if @strength > 5
			person.scream("Ouch!")
			person.run(20)
			person.caffeine_level -= 100
		else
			puts "This may be a fair fight..."
		end
	end

end

class EvilNinja < Person
	def initialize(strength, evilness=500)
		@strength = strength
		@evilness = evilness
	end

	def punch(person)
		@evilness += 10 if @evilness
		person.scream("Oh crap!")
		person.run(5)

		if @strength > 5
			person.scream("Ouch!")
			person.run(20)
		else
			puts "This may be a fair fight..."
		end
	end

	def cause_mayhem(person)
		person.caffeine_level = 0
	end
end

Joe = Person.new("Joe", 400)
yellow = PowerRanger.new(100, "yellow")
Joe.run(10)
Joe.scream("AHH!")
Joe.drink_coffee(50)
yellow.punch(Joe)
yellow.rest
