require 'pry'

def are_you_playing_banjo(name)
  # Implement me!
  if name[0] == "R" || name[0] == "r"
    "#{name} plays banjo"
  else
    "#{name} does not play banjo"
  end
end

p are_you_playing_banjo("Daniel")
p are_you_playing_banjo("Rachel")
p are_you_playing_banjo("rachel")
