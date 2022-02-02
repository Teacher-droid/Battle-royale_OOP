
class Player

    attr_accessor :name, :life_points, :weapon_level                

        def initialize (name)
            @name = name                                            
            @life_points = 10
            @weapon_level = 1
        end
    
        def show_state
            print "#{@name} a #{life_points} points de vie."
        end
    
        def gets_damage(attack)
            @life_points -= attack
            if @life_points <= 0
              puts "#{name} a été tué!"
            end
        end
    
        def attack(player)
            damage_taken = compute_damage
            puts "#{name} attaque #{player.name}."
            puts "Il lui inflige #{damage_taken} points de dommages."
            player.gets_damage(damage_taken)
        end
    
        def compute_damage
            return rand(1..6)
        end
    
    end
    
    
    class HumanPlayer < Player                                    
    
    attr_accessor :weapon_level
    
        def initialize(name)
            @name = name 
            @life_points = 100
            @weapon_level = 1
        end
    
        def show_state
            puts "#{name} a #{life_points} points de vie et une arme de niveau #{weapon_level}."
        end
    
        def compute_damage
            return rand(1..6)*@weapon_level
        end
    
        def search_weapon
            random = rand(1..6)
            puts "Tu as trouvé une arme de niveau #{random}"
            if @weapon_level < random
                puts "Youhou! elle est meilleure que ton arme actuelle: tu la prends."
                @weapon_level = random
            else
                puts "M@*#$... elle n'est pas mieux que ton arme actuelle..."
            end
        end
    
        def search_health_pack
            dice = rand(1..6)
            case dice
            when 1
                puts "Tu n'as rien trouvé... "
            when 2..5
                puts "Bravo, tu as trouvé un pack de +50 points de vie"
                @life_points += 50
                if @life_points > 100
                   @life_points = 100
                else 
                   return @life_points
                end    
    
              
            when 6
                puts "Waow, tu as trouvé un pack de +80 points de vie !"
                @life_points += 80
                if @life_points > 100
                   @life_points = 100
                else 
                   return @life_points
                end   
    

            end
        end
    end    