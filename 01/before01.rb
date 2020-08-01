

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


array = (10..1000).to_a

for i in array
  if check_decimal(i) && check_binary(i) && check_octal(i)
    p "これが答えだよ #{i}"
  end
end
