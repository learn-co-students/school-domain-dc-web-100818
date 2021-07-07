require 'pry'

class School
attr_reader :name
attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student (student, grade)
    @roster[grade] ||= []
    @roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    hash = {}
    @roster.each do |grade, students|
      hash[grade] = students.sort
    end
    hash
  end

end
