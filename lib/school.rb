# code here!
class School
  attr_accessor :name
  attr_reader :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student(student_name, grade)
    if roster.key?(grade)
      roster[grade] << student_name
    else
      roster[grade] = [student_name]
    end
  end

  def grade(grade)
    @grade = roster[grade]
  end

  def sort
    self.roster.each do |grade, student_name|
      roster[grade] = student_name.sort
      end
    end
end
