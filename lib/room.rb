class Room

    def initialize(capacity)
        @capacity = capacity 
        @occupants = []
    end 

    def capacity 
        @capacity 
    end 

    def occupants 
        @occupants
    end

    def full?
        @occupants.count >= @capacity
    end

    def available_space
        @capacity - @occupants.count
    end

    def add_occupant(str)
        if !full?
            @occupants << str 
            true 
        else 
            false 
        end
    end


end
