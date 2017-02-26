class Alouette
  @@another_thing = []
  @@lyrics_with_et = [ "Et le dos!", "Et la queue!", "Et les pattes!", "Et les ailes!", "Et le cou!", "Et les yeux!", "Et le bec!", "Et la tête!" ]

  @@lyrics_without_et = [ " le dos.", " la queue.", "   les pattes.", " les ailes.", " le cou.", " les yeux.", " le bec.", " la tête." ]


  def self.lines_for_verse(verse_index)
    # Returns an array of strings without repeats

    return @@lyrics_with_et[verse_index..7]


  end

  def self.verse(verse_num)
    # will build the requested verse...it should return a string
    # lines_for_verse(2) => @lyrics_with_et = ["Et les yeux!", "Et le bec!", "Et la tete!"]
    # verse(2) => "Je te plumerai les yeux.
                # Je te plumerai les yeux.
                # Et les yeux!
                # Et les yeux!
                # Et le bec!
                # Et le bec!
                # Et la tête!
                # Et la tête!
                # Alouette!
                # Alouette!
                # A-a-a-ah"

    thing = Alouette.lines_for_verse(verse_num)
    #add_phrase = @@lyrics_without_et[verse_num..7]
    key_phrase = thing[0].split(' ')[1..-1].join(' ').chomp('!')


    thing.each do |phrase|
      @@another_thing << phrase.split("\n") * 2
    end
    all_phrases = @@another_thing.join("\n")


    verse = "Je te plumerai #{key_phrase}.\n" * 2 + "#{all_phrases}\n" + "Alouette!\n" * 2 + "A-a-a-ah"

    return verse

  end

  def self.sing
    # will build the entire song
  end
end
