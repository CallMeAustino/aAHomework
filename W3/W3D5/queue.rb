class Queue

    def initialize
        @queue = []

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.unshift
    end

    def peek
        @queue[0]
    end

end