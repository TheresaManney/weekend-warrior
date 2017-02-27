class Alouette

  attr_accessor :full_phrase

  @@lyric_lines = [ "Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!" ]


  def self.lines_for_verse(verse_index)
    # Returns an array of strings without repeats

    return @@lyric_lines[verse_index..7]


  end

  def self.verse(verse_num)

    lyrics = ""
    #add_phrase = @@lyrics_without_et[verse_num..7]
    full_phrase = lines_for_verse(verse_num)[0].split(' ')[1..-1].join(' ').chomp('!')

    lines_for_verse(verse_num).each do |phrase|

      lyrics  << "#{phrase}\n" * 2

    end

    verse = "Je te plumerai #{full_phrase}.\n" * 2 + "#{lyrics}" + "Alouette!\n" * 2 + "A-a-a-ah"

    return verse

  end

  def self.sing
    # will build the entire song with refrain
    refrain = "Alouette, gentille alouette,\n
    Alouette, je te plumerai."

    full_song = ""
    8.times do |index|
      full_song << refrain + "\n\n"
      full_song << verse(index) + "\n\n"
    end

    full_song << refrain
    return full_song

  end
end
#verse = Alouette.verse(5)
#puts "#{verse}"
