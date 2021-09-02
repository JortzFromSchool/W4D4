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