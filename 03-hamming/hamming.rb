class Hamming
  def self.differences(s1, s2)
    a1 = s1.split("")
    a2 = s2.split("")
    diff = a1 & a2
    count = diff.length
    return count

  end
end

string1 = "GAGCCTACTAACGGGAT"
string2 = "CATCGTAATGACGGCCT"


puts Hamming.differences(string1, string2)

























# if s1.chars == s2.chars
#
# end
# returns 0 if two strings are empty
# argument error if strands are not equal length

# loop through to check that s1 characters are equal to s2 characters
# counter that counts when there is a differences
# a1 = s1.split("")
# a2 = s2.split("")
# counter = 0
# a2.each do |char|
#   if a1[char].to_s != char.to_s
#     counter += 1
#   end
#   return counter
# end
#






##############TEACHERS SOLUTION##############
class Hamming
  def self.compute(string1, string2)
    raise ArgumentError if string1.length != string2.length
    # count = 0
    # string1.length.times do |i|
    #   if string1[i] != string2
    #     count += 1
    #   end
    # end
    # return count

    return string1.length.length.times.count do |i|
      string1[i] != string2[i]
    end
  end
end
