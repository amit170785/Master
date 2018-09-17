class MyFirstClass
    # Class variables
    @@count = 0

    # constructor method
    def initialize(arg1, arg2)
        #assign instance variables
        @argument1, @argument2 = arg1, arg2

        @@count += 1
    end

    # getter method
    def getArgument1
        @argument1
    end

    def getArgument2
        @argument2
    end

    #make them private
    private :getArgument1, :getArgument2

    # accessor methods
    def printArgument1
        @argument1
    end

    def printArgument2
        @argument2
    end

    def printPrivateArgument1
        @argument1
    end
 
    # make it private
    protected :printPrivateArgument1

    def printArgument1
        @argument1
    end


    # setter methods
    def setArgument1=(value)
        @argument1 = value
    end

    def setArgument2=(value)
        @argument2 = value
    end

    # instance method
    def add
        @argument1 + @argument2
    end

    def sub
        @argument1 - @argument2
    end

    def mul
        @argument1 * @argument2
    end

    def div
        getArgument1() / getArgument2()
    end

    # class method
    def self.printCount()
        puts "Instance count is : #@@count"
    end

    #to_s method
    def to_s
        "(arg1:#@argument1, arg2:#@argument2)" # string formatting of the object
    end
end


# create an object
myFirstObject = MyFirstClass.new(10, 20)

# setter methods
myFirstObject.setArgument1 = 30
myFirstObject.setArgument2 = 50

# use accessor methods
arg1 = myFirstObject.printArgument1()
arg2 = myFirstObject.printArgument2()

# use instance method
a = myFirstObject.add()
s = myFirstObject.sub()
m = myFirstObject.mul()
d = myFirstObject.div()

# calling class method
MyFirstClass.printCount()

puts "Argument 1 is : #{arg1}"
puts "Argument 2 is : #{arg2}"
puts "Add: #{a} Sub: #{s} Mul: #{m} Div: #{d}"
puts "String value of arguments is : #{myFirstObject}"
puts "=============================================================="
myFirstObject.printPrivateArgument1()
puts "=============================================================="

