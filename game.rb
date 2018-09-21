# simple game engine
# death scene
# central starting point 
# has a keypad hero has the guess number for
# bridge scene where hero places bomb
# scape pod: where hero escapes after guessing the right escape


class Scene
    def enter()
        puts "Scene is not yet configured. subclass it and implement enter()"
        exit(1)
    end
end

class Engine 
    def initialize(scene_map)
        @scene_map = scene_map
    end
    
    def play()
        current_scene = @scene_map.opening_scene()
        last_scene = @scene_map.next_scene("finished")

        while current_scene != last_scene
            next_scene_name = current_scene.enter()
            current_scene = @scene_map.next_scene(next_scene_name)
        end
    end
end

class CentralCorridor < Scene

    def enter()
        puts "The Gothons of Planet Percal #25 have invaded your ship and destroyed"
        puts "your entire crew.  You are the last surviving member and your last"
        puts "mission is to get the neutron destruct bomb from the Weapons Armory,"
        puts "put it in the bridge, and blow the ship up after getting into an "
        puts "escape pod."
        puts "\n"
        puts "You're running down the central corridor to the Weapons Armory when"
        puts "a Gothon jumps out, red scaly skin, dark grimy teeth, and evil clown costume"
        puts "flowing around his hate filled body.  He's blocking the door to the"
        puts "Armory and about to pull a weapon to blast you."
        print "> "

        action = $stdin.gets.chomp

        puts "action is #{action}"

        if action == "shoot!"
            puts "Quick on the draw you yank out your blaster and fire it at the Gothon."
            puts "His clown costume is flowing and moving around his body, which throws"
            puts "off your aim.  Your laser hits his costume but misses him entirely.  This"
            puts "completely ruins his brand new costume his mother bought him, which"
            puts "makes him fly into an insane rage and blast you repeatedly in the face until"
            puts "you are dead.  Then he eats you."
            return 'death'
        elsif action == "dodge!"
            puts "Like a world class boxer you dodge, weave, slip and slide right"
            puts "as the Gothon's blaster cranks a laser past your head."
            puts "In the middle of your artful dodge your foot slips and you"
            puts "bang your head on the metal wall and pass out."
            puts "You wake up shortly after only to die as the Gothon stomps on"
            puts "your head and eats you."
            return 'death'
          elsif action == "tell a joke"
            puts "Lucky for you they made you learn Gothon insults in the academy."
            puts "You tell the one Gothon joke you know:"
            puts "Lbhe zbgure vf fb sng, jura fur fvgf nebhaq gur ubhfr, fur fvgf nebhaq gur ubhfr."
            puts "The Gothon stops, tries not to laugh, then busts out laughing and can't move."
            puts "While he's laughing you run up and shoot him square in the head"
            puts "putting him down, then jump through the Weapon Armory door."
            return 'laser_weapon_armory'
          else
            puts "DOES NOT COMPUTE!"
            return 'central_corridor'
          end
    end
  end
  
class LaserWeaponArmory < Scene
    def enter()
    end
end

class TheBridge < Scene
    def enter()
    end
end

class EscapePod < Scene
    def enter()
    end
end

class Finished < Scene
    def enter()
        puts "YOU WON, GOOD JOB!"
    end 
end

class Death < Scene
    def enter()
        puts "You died!"
    end
end

class Map
    ## class variables
    @@scenes = {
        'central_corridor' => CentralCorridor.new(),
        'laser_weapon_armory' => LaserWeaponArmory.new(),
        'the_bridge' => TheBridge.new(),
        'escape_pod' => EscapePod.new(),
        'death' => Death.new(),
        'finished' => Finished.new(),
    }
    
    def initialize(start_scene)
        @start_scene = start_scene
    end

    def next_scene(scene_name)
        val = @@scenes[scene_name]
        return val
    end

    def opening_scene()
        return next_scene(@start_scene)
    end
end

a_map = Map.new("central_corridor")
engine = Engine.new(a_map)
engine.play()