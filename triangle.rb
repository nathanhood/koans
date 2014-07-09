# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  if a == 0 || b == 0 || c == 0
    raise TriangleError, "All sides must be greater than 0"
  elsif a < 0 || b < 0 || c < 0
    raise TriangleError, "Cannot have negative values"
  elsif a == b && (a+b) <= c || a == c && (a+c) <= b || c == b && (c+b) <= a
    raise TriangleError, "Two equal sides of isosceles must be greater than third side"
  elsif a == b && b == c && c == a
    :equilateral
  elsif a == b || a == c || c == b
    :isosceles
  elsif a != b && b != c && c != a
    :scalene
  else
    nil
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
