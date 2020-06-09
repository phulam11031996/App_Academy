  class LRUCache
    def initialize(cache_size = 5)
        @cache_size = Array.new(cache_size) {[]}

    end

    def count
      # returns number of elements currently in cache
    end

    def add(el)
      # adds element to cache according to LRU principle
    end

    def show
      # shows the items in the cache, with the LRU item first
    end

    # helper methods go here!

    attr_accessor :cache_size
  end