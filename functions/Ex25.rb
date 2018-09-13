module Ex25

## create a new module
## new method to break words
## module x...rember to end
## to get class of object (use words.class)
## split is for a string class
## split turns a string into an array
## sort is for an array but not a string
## shift and pop to get first element and last element of array
    private
        words = "my hello name is"
    def Ex25.break_words(words)
        return words.split(" ")
    end

    def Ex25.sort_words(words)
        return words.sort
    end

    def Ex25.print_first_word(words)
        word = words.shift
        puts word
    end

    def Ex25.print_last_word(words)
        word = words.pop
        puts word
    end

    def Ex25.sort_sentence(sentence)
        # takes in a sentence of words(string), can break them and sort them

        words = Ex25.break_words(sentence)
        return Ex25.sort_words(words)
    end


    break_words = Ex25.break_words(words)
    sorted_words = Ex25.sort_words(break_words)
    Ex25.print_first_word(break_words)
    Ex25.print_last_word(break_words)

end