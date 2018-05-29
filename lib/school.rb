require 'pry'
class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
# binding.pry
    roster[grade] ||= []
    roster[grade] << student

  end

  def grade(grade)
    roster[grade]
  end

  def sort
    sorted_roster = {}
    roster.each do |g_key, s_value|
      sorted_roster[g_key] = s_value.sort
    end
    sorted_roster
  end
end
