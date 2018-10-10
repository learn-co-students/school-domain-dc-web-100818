require 'pry'

class School
  def initialize (name)
    @name = name
    @roster = {}
  end

  def roster
    @roster
  end

  def add_student (name, grade)
    if roster.key?(grade)
      roster[grade] << name
    else
      roster[grade] = [name]
    end
  end

  def grade (number)
    @roster[number]
  end

  def sort
    self.roster.each do |grade, students|
      roster[grade] = students.sort
    end
  end
end
