def readFile(file)
  open_file=File.open(file)
  file=open_file.read
  open_file.close()
  file
end

readtext = readFile("file1.txt")

def xter_count (text)
 text.length
end
   
def word_count(text)
  text.split(" ").count
end

def line_count(text)
  text.lines.count
end
 
def para_count(text)
  text.split("\n\n").count
end

def sentence_count(text)
  text.split(/\.|\?|\!/).count
end

def ave_words_sent(text)
  word_count(text)/sentence_count(text)
end

def ave_sent_per_parg(text)
  sentence_count(text)/para_count(text)
end

print "number of characters:"
puts xter_count(readtext)
print "number of words:"
puts word_count(readtext)
print "Number of lines:"
puts line_count(readtext)
print "Number of paragraphs"
puts para_count(readtext)
print "Number of sentences:"
puts sentence_count(readtext)
print "Average number of words in a sentence:"
puts ave_words_sent(readtext)
print"Average number of sentences per paragraph:"
puts ave_sent_per_parg(readtext)













