def change_string(str)
  str.replace('New string content')
end

s = 'Original String content!'
# change_string(s)

# puts s

# 'New string content'

# using dup **

# change_string(s.dup)

# puts s

# 'Original String content!'

# using freeze **

# s.freeze

# change_string(s)

# can't modify frozen String: "Original String content!" (FrozenError)
