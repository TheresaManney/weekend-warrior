#name is adding a parameter to a method
# = nil is giving it a default parameter
def hello_world name = ''
  if name = nil || name == ''
    return "Hello, World!"
  else
    return "Hello, #{name}!"
  end
end
