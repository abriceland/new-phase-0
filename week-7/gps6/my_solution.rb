# Virus Predictor
# I worked on this challenge [by with: ].
# We spent [#] hours on this challenge.
# EXPLANATION OF require_relative
#Loads the file name/library "state_data" to the current file to pull data from 
#"require_relative" calls on the method "require" to link the file
require_relative 'state_data' 
class VirusPredictor
#Initialize method which is required for a new class. This is defining the instance variables for state, population and population density, and takes those 3 as arguments as well. 
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
    
#Virus Effects method calls on the two other methods "predicted_deaths" and "speed_of_spread" which are defined below it and calls on the instance variables as its arguments.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  
  private    
#Predicted Deaths is a method that predicts deaths based on population and population density (arguments are population density, population, and state) Uses if/elsif/else statements to calculate each states predictions of death by float and rounds it down to the nearest integer. It prints out the state name and projected number of deaths by people in the outbreak at the end of the method.  
  def predicted_deaths
    #   (population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
    #.floor => returns the largest integer less than or equal to float (rounds down to nearest integer)
  end
#Speed of Spread method takes the population density and state as its arguments and calcuates the projected speed (in months) that the virus would spread. 
  def speed_of_spread
    #   (population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state

# key = "Alabama" 
# {population_density: 94.65, population: 4822023}

STATE_DATA.each do |key, value|
  one_state = VirusPredictor.new(key, STATE_DATA[key][:population_density], STATE_DATA[key][:population])
     one_state.virus_effects
end    
 
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#=======================================================================
=begin
# Reflection Section

What are the differences between the two different hash syntaxes shown in the state_data file?

One uses the rocket symbol => and one uses the colon :


What does require_relative do? How is it different from require?

Require is the method that require_relative uses to connect to a constant in this example.


What are some ways to iterate through a hash?

Using the methods .each, .each-pair, .each-key, and .each-value.  


When refactoring virus_effects, what stood out to you about the variables, if anything?

That they were repeated in each method, despite the fact that they are already part of 
the methods themselves. 


What concept did you most solidify in this challenge?

How to create a class instance calling a library with more complex keys and pairs. 


=end