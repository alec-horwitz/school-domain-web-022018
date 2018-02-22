# code here!
class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  attr_reader :roster
  def add_student(name, grade)
    self.roster.include?(grade) ? self.roster[grade].push(name) : self.roster[grade] = [name]
  end

  def grade(grade)
    self.roster[grade]
  end

  def sort
    self.roster.each { |grade, students|
      self.roster[grade] = students.sort
    }
  end
end
