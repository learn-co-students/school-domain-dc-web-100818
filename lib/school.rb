require 'pry'

class School

  attr_reader :name
  attr_accessor :roster, :student_name, :grade

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster[@grade].nil?
      @roster[@grade] = []
      @roster[@grade] << student_name
    else
      @roster[@grade] << student_name
    end
  end

  def grade (grade)
    @roster.find do |grade_level, students|
      grade_level == grade
    end[1]
  end

  def sort
    @roster.map { |k,v| [k,v.sort] }.to_h
  end
end
