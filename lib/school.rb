class School


	
	
	attr_reader :name, :roster
	attr_accessor 

	def initialize(name)
		@name = name
		@roster = {}
	end

	def name=(name)
		@name = name
	end

	def add_student(name, grade)
		if self.roster.has_key?(grade)
			self.roster[grade] << name
		else 
			self.roster[grade] = [name]
		end
	end

	def grade(grade)
		self.roster[grade]
	end

	def sort
		self.roster.each do |grade, students|
			students.sort!
		end
	end
end

# school = School.new("Test School")
# school.add_student("AC Slater", 10)
# school.roster
