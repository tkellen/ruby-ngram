require File.expand_path(File.dirname(__FILE__) + '/helper')

describe NGram do
    ngram = NGram.new({
        :size => 2,
        :word_separator => " ",
        :padchar => "_"
    })

    it "should have a version" do
        NGram::VERSION.should be_a_kind_of String
    end

    describe "::initialize" do
        it "should allow a size to be specified" do
            ngram.size.should eq(2)
        end

        it "should allow a word separator to be specified" do
            ngram.word_separator.should eq(" ")
         end

        it "should allow a padding character to be specified" do
            ngram.padchar.should eq("_")
        end
    end

    describe "#parse" do
        it "should convert single words into an array of ngrams" do
            ngram.parse('test').should eq(['_t', 'te', 'es', 'st', 't_'])
        end

        it "should convert phrases, as split by defined separator, into a nested array of ngrams" do
            ngram.parse('test phrase').should eq([['_t', 'te', 'es', 'st', 't_'], ['_p', 'ph', 'hr', 'ra', 'as', 'se', 'e_']])
        end
    end
end