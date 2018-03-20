class Parent 
    @@things = []

    def self.things
        @@things
    end

    def things
        @@things
    end
end

#Child class is a subclass of superclass Parent
class Child < Parent
end

#Add "car" to Parent class and "doll" to Child class
Parent.things << :car
Child.things << :doll
Parent.things << :house
#Create new Parent objects
mom = Parent.new
dad = Parent.new

#The @@things variable is a class variable. All class (parent or child) use the same variable
p Parent.things
p Child.things
p mom.things
p dad.things