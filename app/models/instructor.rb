
class Instructor

  attr_accessor :name
    @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def pass_student(name, current_test)
    BoatingTest.all.each do |boat_test|
      if boat_test.student.first_name == name && boat_test.test == current_test
        boat_test.status = "passed"
        puts "Hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
        puts boat_test.status
      end
    end
  end

  def fail_student(name, current_test)
    BoatingTest.all.each do |boat_test|
      if boat_test.student.first_name == name && boat_test.test = current_test
        boat_test.status = "failed"
        puts "Hiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii"
        puts boat_test.status
      end
    end
  end
end
