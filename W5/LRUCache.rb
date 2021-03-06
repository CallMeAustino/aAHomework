class LRUCache
    def initialize(size)
        @size = []
    end

    def count
      @size.length
    end

    def add(el)
      if @size < 4
        @size << el
      else
        @size.unshift
        @size << el
      end
    end

    def show
        @size.reverse
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end

  johnny_cache = LRUCache.new(4)

  johnny_cache.add("I walk the line")
  johnny_cache.add(5)

  johnny_cache.count # => returns 2

  johnny_cache.add([1,2,3])
  johnny_cache.add(5)
  johnny_cache.add(-5)
  johnny_cache.add({a: 1, b: 2, c: 3})
  johnny_cache.add([1,2,3,4])
  johnny_cache.add("I walk the line")
  johnny_cache.add(:ring_of_fire)
  johnny_cache.add("I walk the line")
  johnny_cache.add({a: 1, b: 2, c: 3})