require_relative "../../app/models/calculator.rb"


RSpec.describe "Calculate functionality" do 

    context 'numerical operations' do 

        it 'should add two numbers correctly' do 
            calc = Calculator.new(opt1: 10, opt2: 300)
            expect(calc.add).to eq(310)
        end

        it 'should square opt1 correctly' do 
            calc = Calculator.new(opt1: 1, opt2: 1)
            calc2 = Calculator.new(opt1: 6, opt2: 1)
            calc3 = Calculator.new(opt1: 5, opt2: 1)
            expect(calc.square).to eq(1)
            expect(calc2.square).to eq(36)
            expect(calc3.square).to eq(25)
            
        end

        it 'should cube opt1 corectly' do 
            calc = Calculator.new(opt1: 3, opt2: 2)
            calc2 = Calculator.new(opt1: 2, opt2: 2)
            calc3 = Calculator.new(opt1: 5, opt2: 2)
            expect(calc.cube).to eq(27)
            expect(calc2.cube).to eq(8)
            expect(calc3.cube).to eq(125)
        end

    end

end