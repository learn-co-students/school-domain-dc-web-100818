class School
  def initialize(name)
    @name = name
    roster = {}
    @roster = roster
  end

  attr_accessor :name, :roster

  def add_student(student_name, grade)
    @student_name = student_name
    @grade = grade
    @roster[@grade] ||= []
    @roster[@grade] << @student_name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each do |grade, students|
      students.sort!
    end
  end

end
