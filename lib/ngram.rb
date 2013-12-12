class NGram
    VERSION = "1.0.0"
    attr_accessor :size, :word_separator, :padchar

    def initialize(opts={})
        @size = opts[:size]||2
        @word_separator = opts[:word_separator]||" "
        @padchar = opts[:padchar]||"_"
    end

    def parse(phrase)
        words = phrase.split(@separator)
        if words.length == 1
            process(phrase)
        else
            words.map { |w| process(w) }
        end
    end

    def process(word)
        pad = @padchar*(@size-1)
        word = "#{pad}#{word}#{pad}"
        (0..word.length - @size).map do |idx|
            "#{word[idx, @size]}"
        end
    end

    private :process
end