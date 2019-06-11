require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

john = Instructor.new("John")
soundarya = Instructor.new("Soundarya")
rohit = Student.new("Rohit")
spencer = Student.new("Spencer")

test1 = BoatingTest.new(spencer, "brakes", "pending", soundarya)
test2 = BoatingTest.new(rohit, "steering", "passed", john)

test3 = rohit.add_boating_test("parking", "failed", john)
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
test4 = Student.find_student("Rohit")

# spongebob = Student.new("Spongebob")
# patrick= Student.new("Patrick")
#
# puff= Instructor.new("Ms.Puff")
# krabs= Instructor.new("Mr.Krabs")
#
# no_crashing = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
# power_steering_failure = patrick.add_boating_test("Power Steering 202", "failed", puff)
# power_steering_pass = patrick.add_boating_test("Power Steering 201", "passed", krabs)


binding.pry
0 #leave this here to ensure binding.pry isn't the last line
