class Anagram
    attr_accessor :testing_word

    def initialize(provided_word)
        @testing_word = provided_word
    end

    def match(array_of_words)
        matched_words = []
        array_of_words.each do |word|
            if word.chars.sort == @testing_word.chars.sort
                matched_words.push(word)
            end
        end
        matched_words
    end

    def matched_words_upcase(match_results)
        match_results.each do |result|
            puts result.upcase
        end
    end
end

cat_variable = Anagram.new("cat")

my_matched_words = cat_variable.match(["tac", "dog", "act", "bird"])

cat_variable.matched_words_upcase(my_matched_words)