# code here!
class School 
  def initialize(school_name) 
    @name = school_name
    @roster = {}
  end 

  def roster
    @roster
  end

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    if @roster.include?(grade) == false
      @roster[grade] = []
    end
    @roster[grade] << student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort 
    @roster.each do |grade, names|
      @roster[grade] = names.sort
    end
  end

end

