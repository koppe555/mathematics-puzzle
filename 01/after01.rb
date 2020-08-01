

def check_decimal(i)
  i.to_s == i.to_s.reverse
end

def check_binary(i)
  i_binary = i.to_s(2)
  i_binary == i_binary.reverse
end

def check_octal(i)
  i_octal = i.to_s(8)
  i_octal == i_octal.reverse
end

num = 11

while true
  if check_decimal(num) && check_binary(num) && check_octal(num)
    p "これが答えだよ #{num}"
    break
  end
  num +=2
end


