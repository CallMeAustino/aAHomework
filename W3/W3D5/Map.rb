class Map

    def initialize
        @map = []
    end

    def set(key,value)
        if !@map.include?([key,value])
            @map << [key,value]
        end
    end

    def get(key)
        @map.each do |kv|
            if kv[0].include?(key)
                return kv[1]
            end
        end
    end

    def delete(key)
        @map.each_with_index do |kv,idx|
            if kv[0].include?(key)
                @map.delete_at(idx)
            end
        end
    end

    def show
        @map
    end
end

# a = Map.new
# a.set("Greetings","Hi")
# a.set("Farwells","Bye")
# # p a.get("Greetings")
# p a.show
# a.delete("Farwells")
# p a.show