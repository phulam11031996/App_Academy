  class LRUCache
    def initialize(cache_size = 5)
        @cache = Array.new()
    end

    def count
      @cache.length
    end

    def add(el)
      if @cache.include?(el)
        @cache.delete(el)
        @cache.push(el)
      else
        @cache.unshift
        @cache.push(el)
      end
      el
    end

    def show
      @cache
    end

    # private
    # helper methods go here!

    attr_accessor :cache_size
  end