class Questions 
    def initialize()
        @a = rand(1..10)
        @b = rand(1..10)
    end

    def ask
        puts "what's #{@a} + #{@b}?"
        print ">  " 
        choice = $stdin.gets.chomp.to_i

        if choice == (@a + @b) 
            return true
        else
            return false
        end
    end
end

