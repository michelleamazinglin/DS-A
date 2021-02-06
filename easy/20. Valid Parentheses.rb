#string, stack

#Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

#An input string is valid if:

#Open brackets must be closed by the same type of brackets.
#Open brackets must be closed in the correct order.


def is_valid(s)
  brackets = {
    "[" => "]",
    "{" => "}",
    "(" => ")"
  }

  stack = []

  s.each_char do |bracket|
    if brackets[bracket]
      stack << brackets[bracket]
    elsif !stack.empty? && stack.pop == bracket
      next
    else
      return false
    end
  end
  
  stack.count == 0
end