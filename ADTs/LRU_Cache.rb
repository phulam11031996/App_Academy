  class LRUCache
    def initialize(cache_size = 5)
        @cache = Array.new()
        @hash_set = Array.new(cache_size) {[]}
        @cache_size = cache_size
    end

    def count
      @cache.length
    end

    def add(el)
      if include_hash(el)
        @cache.delete(el)
        @cache.push(el)
      else
        @cache.unshift
        @cache.push(el)
      end
      add_hash(el)
      el
    end

    def show
      @cache
    end

    def add_hash(el)
        hash_val = el.hash 
        idx = hash_val % @cache_size
        @hash_set[idx].push(el)
    end

    def include_hash(el)
        idx = el.hash % @cache_size
        @cache[idx].include?(el)
    end

    # private
    # helper methods go here!

    attr_accessor :cache_size
    attr_accessor :cache_size 
    attr_accessor :hash_set
  end