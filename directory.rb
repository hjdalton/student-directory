#the list of students in an array
students = [
  {name: "Harry Potter", cohort: :november},
  {name: "Ron Weasley", cohort: :november},
  {name: "Hermione Grainger", cohort: :november},
  {name: "Draco Malfoy", cohort: :november},
  {name: "Luna Lovegood", cohort: :november},
  {name: "Fred Weasley", cohort: :november},
  {name: "George Weasley", cohort: :november},
  {name: "Ginny Weasley", cohort: :november},
  {name: "Colin Creevey", cohort: :november},
  {name: "Choo Chang", cohort: :november},
  {name: "Cedric Diggory", cohort: :november},
]
def input_students
  puts "Enter the name of the new student"
  puts "To finish, hit return twice"
  students = []
  name = gets.chomp
  while !name.empty? do 
    students << {name: name, cohort: :november}
    puts "We have registered #{students.count} students"
    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Hogwarts School for witchcraft and wizardry"
  puts "-------------"
end

def print(names)
  names.each do |name|
  puts "#{name[:name]} (#{name[:cohort]} cohort)"
  end
end 

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end

def interactive_menu
  students = []
  loop do 
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit"
    selection = gets.chomp
    case selection 
    when "1" 
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit
    else puts "Please try again"
    end
  end
end

interactive_menu()



