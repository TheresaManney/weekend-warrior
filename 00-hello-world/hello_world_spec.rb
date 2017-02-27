gem 'minitest', '>= 5.0.0'
require 'minitest/pride'
require 'minitest/autorun'
require_relative 'hello_world'

# when we create do, we create a block!
describe "Hello World" do
  #each it is consitered one test case
  #'it' should be thought of as a title
  it "When given no name, it should greet the world!" do
    expect(hello_world).must_equal 'Hello, World!'
  end

  it "When given 'Alice' it should greet Alice!" do
    expect(hello_world 'Alice').must_equal 'Hello, Alice!'
  end

  it "When given 'Bob' it should greet Bob!" do
    expect(hello_world 'Bob').must_equal 'Hello, Bob!'
  end

  it "When given an empty string it should greet the world!" do
    expect(hello_world '').must_equal 'Hello, World!'
  end
end

#skips were used to skip certain blocks of code so other blocks of code can be tested with this hello_world_spec.rb
#skips were added one line before expect...
