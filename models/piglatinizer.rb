class PigLatinizer

    attr_accessor :string

    def initialize

    end

    def piglatinize(string)
        words = string.split(" ")
        pigwords = words.map {|word| piglatinize_word(word)}
        pigwords.join(" ")

    end

    def piglatinize_word(word)

        first_letter = word[0].downcase
        if first_letter == "a" || first_letter == "e" || first_letter == "i" || first_letter == "o" || first_letter == "u"
            "#{word}way"
        else
            consonants = []
            consonants << word[0]
                if ["a", "e", "i", "o", "u"].include?(word[1]) == false
                consonants << word[1]
                    if ["a", "e", "i", "o", "u"].include?(word[2]) == false
                        consonants << word[2]
                    end
                end
            "#{word[consonants.length..-1] + consonants.join + "ay"}"
        end


    end


end