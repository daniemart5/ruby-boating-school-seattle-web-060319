class Student

  attr_accessor :first_name

  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.all
    @@all
   end

   def add_boating_test(test, status, instructor)
     BoatingTest.new(self, test, status, instructor)
   end

   def self.find_student(first_name)
     @@all.find do |student|
       if first_name == student.first_name
         return student
       end
     end
   end

  def grade_percentage
      passed_tests = [ ]
      grades = BoatingTest.all.select do |test|
        test.student == self
      end

      grades.select do |done_test|
        if done_test.status == "passed"
          passed_tests << done_test
        end
      end
    (passed_tests.length.to_f /  grades.length.to_f) * 100
    end


end
