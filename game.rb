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

# Engine(Map)
# Map = Map.new("")

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

class Death < Scene
    def enter()
    end
end

class CentralCorridor < Scene

    def enter()
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


class Map
    ## to get a dictionary 
    
    def initialize(start_scene)
    end

    def next_scene(scene_name)
    end
end

a_map = Map.new("central_cooridor")