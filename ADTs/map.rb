 class Map
    def initialize
        @map = []
    end

    def set(key, val)
        map.each.with_index do |arr, idx|
            map[idx][1] = val if arr[0] == key
            return map[idx] if arr[0] == key
        end
        map << [key, val]
        [key,val]
    end

    def get(key)
        map.each { |arr| return arr[1] if arr[0] == key }
        nil
    end

    def delete(key)
        map.each.with_index do |arr, idx|
            map.delete_at(idx) if arr[0] == key
            return map[idx] if arr[0] == key
        end
        nil
    end

    def show
        p map
    end

    private 
    attr_accessor :map
 end
