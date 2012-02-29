# Read in the file and count the lines
stop_words            = %w{the a by on for of are with just but and to the my I has some in is}
lines                 = File.readlines(ARGV[0])
line_count            = lines.size
text                  = lines.join

# Count the characters
total_chars           = text.length
total_chars_no_spaces = text.gsub(/\s+/, '').length

# Coutn the words, sentences, and paragraphs 
word_count            = text.split.length
sentence_count        = text.split(/\.|\?|\!/).length
paragraph_count       = text.split(/\n\n/).length

# Make a list of words that aren't stop words
words                 = text.scan(/\w+/)
keywords              = words.select { |word| !stop_words.include?(word) }

# Summarize text by cherry picking some important sentences
sentences = text.gsub(/\s+/, ' ').strip.split(/\.|\?|!/)
sentences_sorted = sentences.sort_by { |sentence| sentence.length }
one_third = sentences_sorted.length / 3
ideal_sentences = sentences_sorted.slice(one_third, one_third + 1)
ideal_sentences = ideal_sentences.select { |sentence| sentence =~ /is|are/ }

# Give the analysis back to the user
puts "#{line_count} lines"
puts "#{total_chars} characters"
puts "#{total_chars_no_spaces} characters excluding spaces"
puts "#{word_count} words"
puts "#{sentence_count} sentences"
puts "#{paragraph_count} paragraphs"
puts "#{sentence_count / paragraph_count} sentences per paragraph (average)"
puts "#{word_count / sentence_count} words per sentence (average)"
puts "#{((keywords.length.to_f / words.length.to_f) * 100).to_i}% of key words"
puts "Summary: \n\n" + ideal_sentences.join('. ')
puts "-- End of analysis"