  class LRUCache
    def initialize(cache_size = 5)
        @cache = Array.new(cache_size) {[]}

    end

    def count
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
    end

    def show
      @cache
    end

    # private
    # helper methods go here!

    attr_accessor :cache_size
  end