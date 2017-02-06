def calculator (x, y, operator)
  if operator == '+'
   return x + y
  elsif operator == '-'
   return x - y
  elsif operator == 'x'
    return x * y
  elsif operator == '/'
    return x.fdiv(y)
  else
    return nil
  end
end
