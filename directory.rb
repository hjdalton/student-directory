#the list of students in an array
students = [
"Dr. Hannibal Lecter", 
"Darth Vader", 
"Nurse Ratched", 
"Michael Corleone", 
"Alex DeLarge", 
"The Wicked Witch of the West", 
"Terminator", 
"Freddy Krueger", 
"The Joker", 
"Joffrey Baratheon", 
"Norman Bates"
]
#print the student names
puts "The students of Villains Academy"
puts "-------------"

students.each do |student|
  puts student
end 

#Next, we print the total number of students at the academy
puts "Overall, we have #{students.count} great students"