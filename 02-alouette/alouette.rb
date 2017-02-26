class Alouette
  attr_accessor :lyrics_with_et

  def initialize
    @lines_array = []

    @lyrics_with_et = [ "Et le dos!", "Et la queue!", "  Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!" ]

    @lyrics_without_et = [ " le dos!", " la queue!", "   les pattes!", " les ailes!", " le cou!", " les yeux!", " le bec!", " la tête!" ]
  end

  def lines_for_verse(verse_index)
    # Returns an array of strings without repeats
    return @lyrics_with_et[verse_index..7]

  end

  def verse(verse_num)
    # will build the requested verse...it should return a string
    return @lyrics_with_et[verse_num..7].to_s


  end

  def sing
    # will build the entire song
  end
end
