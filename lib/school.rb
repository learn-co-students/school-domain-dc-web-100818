class School
attr_reader :name
attr_accessor :roster

  def roster
    @roster = {}
  end

  def initialize(name)
    @name = name
  end

end
