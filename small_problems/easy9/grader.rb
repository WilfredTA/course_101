#Input is three integers
# Output is a string characted
# Rules: Take the average of the integers
# Range of averages are mapped to string values 

GRADEBOOK = {(90..100) => 'A', 
             (80..89) => 'B', 
             (70..79) => 'C', 
             (60..69) => 'D', 
             (0..59) => 'F'}

def grader(grade1, grade2, grade3)
    average = (grade1 + grade2 + grade3) / 3.0
    GRADEBOOK.each do |range, grade|
        return grade if range.include?(average)
    end
end

p grader(60, 70, 50)