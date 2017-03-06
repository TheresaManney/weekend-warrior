class Alouette

  attr_accessor :full_phrase

  @@lyric_lines = ["Et la tête!", "Et le bec!", "Et les yeux!", "Et le cou!", "Et les ailes!", "Et les pattes!", "Et la queue!", "Et le dos!" ]


  def self.lines_for_verse(verse_index)
    # Returns an array of strings without repeats

    return @@lyric_lines[0..verse_index].reverse



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
    refrain = "Alouette, gentille alouette,\nAlouette, je te plumerai."

    full_song = ""
    8.times do |index|
      full_song << refrain + "\n\n"
      full_song << verse(index) + "\n\n"
    end

    full_song << refrain
    return full_song

  end
end
alouette = Alouette.sing
puts alouette
