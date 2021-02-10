# code here!
class School 
    attr_accessor :roster

    def initialize(model)
        @roster = {} #everytime we create a School.new we create a "model(argument)" with an empty roster 
    end

    def add_student(name, grade) # Having this method adds a "Key" grade is the key
        @roster[grade] ||= [] # we are creating a new key "grade" and assigning by using "Or equals to"
        @roster[grade] << name #we are pushing the student name into the new key."grade"
    end

    def grade(number)
        @roster[number]
    end

    def sort
        hash = {}
        @roster.keys.sort.select do |number|
        hash[number] = @roster[number].sort
        end
        hash
    end

end