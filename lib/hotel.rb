require_relative "room"

class Hotel
  
    def initialize(name, rooms)
        @name = name
        @rooms = {}

        rooms.each do |room_name, cap|
            @rooms[room_name] = Room.new(cap)
        end
    end

    def name 
        @name.split(" ").map(&:capitalize).join(" ")
    end

    def rooms 
        @rooms 
    end 

    def room_exists?(room_name)
        return true if @rooms[room_name]
        false
    end

    def check_in(person, room_name)
        if room_exists?(room_name)
            if @rooms[room_name].add_occupant(person)
                p "check in successful"
            else 
                p "sorry, room is full"
            end
        else 
            p "sorry, room does not exist"
        end
    end

    def has_vacancy?
        !@rooms.all? {|room_name, room| room.full?}
    end

    def list_rooms 
        @rooms.each do |room_name, room| 
            puts "#{room_name}: #{room.available_space}"
        end 
    end

end
