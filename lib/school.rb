require 'pry'

class School

   attr_reader :name
   attr_accessor :roster

   def initialize(name)
     @name = name
     @roster = {}
   end

   def add_student(student, grade)
     if @roster.include?(grade)
        @roster[grade] << (student)
     else
        @roster[grade] = [student]
     end
  end
   def grade(student_grade)
    @roster.find do |key, value|
         student_grade == key
      end[1]
    end

    def sort
    @roster.each_value do |val|
            val.sort!
     end
    end
end
