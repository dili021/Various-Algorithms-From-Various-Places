# If the number of students that came on time is less than a given threshold, class is cancelled.
# Student arrival time is given as minutes relative to start of class [-5, -2, 4, 0, 15]

# Pseudo: 
#   If n(students_on_time) >= threshold then class starts, else it's cancelled.

# As a ternary
a.count { |i| i <= 0 } >= k ? "NO" : "YES"
