require 'pry'
# code here!
class School

  attr_accessor :school_name, :roster

  def initialize(school_name)
    @school_name = school_name
    @roster = {}
  end

  def add_student(student_name, grade)
    if self.roster.include?(grade)
      self.roster[grade] << student_name
    else
      self.roster[grade] = [student_name]
    end
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |grade, students| roster[grade] = students.sort }
  end
end
