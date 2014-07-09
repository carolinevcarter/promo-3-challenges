require_relative "wagon_sort"

################################################

students_list = []

puts "Enter first name? or press <Enter>"
name = gets.chomp


until name == ""
  students_list << name
  puts "Sumbit a name or quit with <Enter>"
  name = gets.chomp
end

#include a congrats message
if students_list.size == 1
  congrats_message = "Congratulations! your wagon has 1 student"
else
  congrats_message = "Congratulations! your wagon has #{students_list.size} students"
end

puts congrats_message


# Trier le tableau
sorted_students = wagon_sort(students_list)


# Construire le message 'alice, bob, joey, and pepita'
message = ""

for student in sorted_students

  #Add the student to the message, separated by a coma
  #if it's the last, don't forget
  if student == sorted_students.last
    message += student
  #if it's the second to last
  elsif student == sorted_students[sorted_students.size - 2]
    message += student + " and "
  #otherwise
  else
    message += student + ", "
  end
end

puts message

# avec join et avec classe !
first_part = sorted_students[0..(sorted_students.size-2)].join(", ")

final_message = "#{first_part} and #{sorted_students.last}"

puts final_message