def validate_gati(name)
  return "#{name} is gati"
end

def validate_tomato(name: 'tomato')
  return name == 'tomato'
end

def validate_equal(name1: 'tomato', name2: 'tomato')
  puts name1, name2
  return name1 == name2
end
