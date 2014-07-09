require_relative "wagon_sort"

students = []

begin
  puts students.empty? ? "Type a student name:" : "Type another student name (or press enter to finish):"
  name = gets
  name.chomp! if name

  # TODO: Add the name we just gotto the students array

end while name != ""

################################################

students_list = []

puts "Enter first name? or press <Enter>"
name = gets.chomp
end

until name == ""
  students_list << name
  puts "Sumbit a name or quit with <enter>"
  name = gets.chomp
end


#include a congrats message
if students_list.size == 1
  congrats_message = "Congratulations! your wagon has 1 student"
  else
  congrats_message = "Congratulations! your wagon has #{students_list.size} students"
  end

  puts congrats_message

  #display the sorted student list
  sorted_students = wagon_sort(students_list)

  # Write a message with the student names
  message = ""
  for students in sorted_students

  #Add the student to the message, separated by a coma
  #if it's the last, don't forget
  if student == sorted_students.last
    message += student + " and "

  #otherwise
  else
    message += student + " , "
  end
end

puts message

#with join and with class!

first_part = sorted_students[0..(sorted_students.size)].join(" , ")

final_message = "#{first_part}" and "#{sorted_students.last}"
puts final_message



# TODO: Call `wagon_sort` method and display the sorted student list

#Type a student name, type another student name, type another student name