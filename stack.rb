class Stack
    def initialize()
        @buffer = []
        @top = -1
    end

    def pop
        if @top == -1
            return nil
        end
        popped = @buffer[@top]
        @buffer[@top] = nil
        @top -= 1
        @buffer = @buffer.compact()
        return popped
    end

    def push (val)
        if val.nil?
            return nil
        end
        @buffer.push(val)
        @top += 1
        return "Pushed"
    end

    def look
        return @buffer[@top]
    end

    def print
        @buffer.each do |i|
            p i
        end
    end
end

c = Stack.new()
p c.push(2)
p c.push(3)
p c.push(5)
p c.pop()
p c.pop()
p c.push(22)
p "Stack : "
c.print()
p c.look()
