class Stack
attr_reader :stack

    def initialize
        @stack = []
    end

    def push(ele)
        @stack << ele
    end

    def pop
        @stack.pop
    end

    def peek
        @stack[-1]
    end
end

a = Stack.new
a.push("Hey!")
p a.peek
p a.stack
