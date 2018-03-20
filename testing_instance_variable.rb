class Parent
    @things = []

    def self.things
        @things
    end

    def things
        self.class.things
    end
end

#Child class is a subclass of superclass Parent
class Child < Parent
    @things = []
end

#Add "car" to Parent class and "doll" to Child class
Parent.things << :car
Child.things << :doll
#Create new Parent objects
mom = Parent.new
dad = Parent.new

#The Child class does NOT inherit "car" (@things is an instance variable) from Parent Class
p Parent.things
p Child.things
p mom.things
p dad.things