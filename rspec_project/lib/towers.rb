class Towers
    def initialize()
        @left = [3,2,1]
        @middle = []
        @right = []
    end

    attr_accessor :left, :middle, :right

    def move(response)
        # case response[0]
        # when -1 ...

        from = nil
        to = nil

        case response[0]
        when 0
            from = @left
        when 1
            from = @middle
        when 2
            from = @right
        else
            raise "Invalid tower selection"
        end

        case response[1]
        when 0
            to = @left
        when 1
            to = @middle
        when 2
            to = @right
        else
            raise "Invalid tower selection"
        end
        raise "Can't move to same tower" if from.object_id == to.object_id
        raise "Can't move from empty tower" if from.empty?

        to.push(from.pop)
    end

    def get_input
        response = []
        puts "choose a tower to pick up the top disc"
        response << gets.chomp
        puts "choose a tower to place disc"
        response << gets.chomp
        response
    end
end