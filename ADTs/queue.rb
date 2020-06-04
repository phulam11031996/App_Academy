# EXERCISE 2
class Queue
    def initialize
        @underlying_arr = []
    end

    def enqueue(el)
        underlying_arr.push(el)
    end

    def dequeue
        underlying_arr.shift
    end

    def peek
        underlying_arr.first
    end

    private
    attr_reader :underlying_arr
end
