#the list of students in an array
@students = []

def input_students
  puts "Enter the name of the new student"
  puts "To finish, hit return twice"
  name = gets.chomp
  while !name.empty? do 
    @students << {name: name, cohort: :november}
    puts "We have registered #{@students.count} students"
    name = gets.chomp
  end
end

def interactive_menu
  loop do 
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection 
  when "1" 
    input_students
  when "2"
   show_students
  when "9"
    exit
  else puts "Please try again"
  end
end

def print_header
  puts "The students of Hogwarts School for witchcraft and wizardry"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu()



