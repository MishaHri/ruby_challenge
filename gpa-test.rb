class Calculator
  attr_reader :name, :grades

  #define empty holders

  grades_number = 0
  grades_count = 0.0
  gpa = 0.0

  def initialize(name, grades)
    @name = name
    @grades = grades
  end

# need to convert the letters on to values

  def change_letter_to_value(letter_value)
    grade = 0
    case letter_value
    when "A"
      grade = 4.0
    when "A-"
      grade = 3.7
    when "B+"
      grade = 3.3
    when "B"
      grade = 3.0
    when "B-"
      grade = 2.7
    when "C+"
      grade = 2.3
    when "C"
      grade = 2.0
    when "C-"
      grade = 1.7
    when "D+"
      grade = 1.3
    when "D"
      grade = 1.0
    when "D-"
      grade = 0.7
    when "E+"
      grade = 0.5
    when "E"
      grade = 0.2
    when "E-"
      grade = 0.1
    when "F"
      grade = 0
    when "U"
      grade = -1.0
    else
      puts "no value"
    end
    grade
  end

   #define how to calculate a gpa

  def gpa
    grades_sum = change_letter_to_value.sum
    grades_count = change_letter_to_value.length
    grades_sum / grades_count
   gpa
  end

  #what to print in terminal

  def announcement
    puts "#{name} scored an average of #{gpa}"
  end
end

## Do not edit below here ##################################################

tests = [
  { in: { name: 'Andy',  grades: ["A"] }, out: { gpa: 4, announcement: "Andy scored an average of 4.0"  } },
  { in: { name: 'Beryl',  grades: ["A", "B", "C"] }, out: { gpa: 3, announcement: "Beryl scored an average of 3.0"  } },
  { in: { name: 'Chris',  grades: ["B-", "C+"] }, out: { gpa: 2.5, announcement: "Chris scored an average of 2.5"  } },
  { in: { name: 'Dan',  grades: ["A", "A-", "B-"] }, out: { gpa: 3.5, announcement: "Dan scored an average of 3.5"  } },
  { in: { name: 'Emma',  grades: ["A", "B+", "F"] }, out: { gpa: 2.4, announcement: "Beryl scored an average of 2.4"  } },
  { in: { name: 'Frida',  grades: ["E", "E-"] }, out: { gpa: 0.3, announcement: "Beryl scored an average of 0.3"  } },
  { in: { name: 'Gary',  grades: ["U", "U", "B+"] }, out: { gpa: 0.4, announcement: "Beryl scored an average of 0.4"  } },
]

# how_might_you_do_these = [
#   { in: { name: 'Non-grades',  grades: ["N"] } },
#   { in: { name: 'Non-strings',  grades: ["A", :B] } },
#   { in: { name: 'Empty',  grades: [] } },
#   { in: { name: 'Numbers',  grades: [1, 2] } },
#   { in: { name: 'Passed a string',  grades: "A A-" } },
# ]

tests.each do |test|
  user = Calculator.new(test[:in][:name], test[:in][:grades])

  puts "#{'-' * 10} #{user.name} #{'-' * 10}"

  [:gpa, :announcement].each do |method|
    result = user.public_send(method)
    expected = test[:out][method]

    if result == expected
      puts "✅ #{method.to_s.upcase}: #{result}"
    else
      puts "❌ #{method.to_s.upcase}: expected '#{expected}' but got '#{result}'"
    end
  end

  puts
end
