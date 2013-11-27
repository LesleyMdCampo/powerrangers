class Person
	def initialize(name, caffeine_level=200)
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

class PowerRanger
end

class EvilNinja
end
