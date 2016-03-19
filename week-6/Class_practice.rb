class Hyena
    attr_accessor :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def laughing
        "#{name} says hahahaha-hehehehe-hahahahahaHA!"
    end
    
    def aging
        @age += 1
    end    
end    
    
    
cuddle_pants = Hyena.new("Mr. Cuddle-Pants", 3)    

p cuddle_pants  

p cuddle_pants.laughing

cuddle_pants.aging
    
p cuddle_pants.age

cuddle_pants.aging
    
p cuddle_pants.age

p cuddle_pants    


class Breakfast 
    attr_accessor :recipe, :ingredients, :ingredients_for_recipe
    
    def initialize(ingredients)
        @ingredients = ingredients   #ingredients = ["flour", "water"]
        @ingredients_for_recipe = []
        @recipe = decide_on_dish
    end
    
    def decide_on_dish
        potentials = {
            "oatmeal" => ["oats", "milk"],
            "chappati" => ["flour", "water"], 
            "omelette" => ["egg", "onion"]
        }
        
        potentials.each do |dish, ingred|
            if (ingred - ingredients).empty?
                @ingredients_for_recipe = ingred
                return dish
            end 
        end
        raise ArgumentError.new("You do not have enough ingredients to make any dish.  Go shopping.")
    end

    def cooking
        @ingredients = (ingredients - ingredients_for_recipe)
        @ingredients_for_recipe = []
        "#{recipe} is done.  Tutti al tavolo a mangiare."
    end
    
    def check_for_new_recipe
        @ingredients_for_recipe = []
        @recipe = decide_on_dish
        "You can now make #{recipe}!"
    end
end
top_shelf = ["water", "wine", "pickles", "flour", "oats", "onion"]
middle_shelf = ["bread", "egg", "milk", "coffee", "water"]

food = Breakfast.new(middle_shelf + top_shelf)

p food

p food.cooking

p food.ingredients

p food.ingredients_for_recipe

p food.check_for_new_recipe

p food.cooking

p food.ingredients

p food.check_for_new_recipe
