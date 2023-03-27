class Calculator
    attr_accessor :opt1, :opt2
    
        def initialize(opt1:, opt2:)
            @opt1 = opt1
            @opt2 = opt2
        end
    
        def add
            @opt1 + @opt2
        end
    
        def sub 
            @opt1 - @opt2
        end
    
        def multiply 
            @opt1 * @opt2
        end
    
        def divide
            @opt1/opt2
        end

        def square 
            @opt1*opt1
        end

        def cube 
            opt1*opt1*opt1
        end
    
    
    
    end