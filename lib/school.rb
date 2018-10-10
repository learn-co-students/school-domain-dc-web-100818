class School 
  
  def initialize(school_name)
    @school= school_name
    @roster = {}
  end 
  
  attr_accessor :roster
  
  def add_student(student_name, grade)
    if @roster.keys.include? grade
      @roster[grade] << student_name
    else 
      @roster[grade] = [student_name]
    end 
  end 
  
  def grade(grade)
    @roster[grade]
  end 
  
  def sort 
    @roster.each do |grade, student|
      student.sort!
    end 
  end 
end 