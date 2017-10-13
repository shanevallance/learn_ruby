#write your code here
def echo simonsay
  simonsay
end
def shout simonshout
  simonshout.upcase
end
def repeat simonrepeat, times = 2
  repeat = ""
  (1..times).each do |n|
    repeat.concat("#{simonrepeat}")
    if n < times
      repeat += " "
    end
  end
  repeat
end
def start_of_word(word, length)
  word[0...length]
end
def first_word(sentence)
  words = sentence.split(/[^[[:word:]]']+/)
  words[0]
end
def titleize(input)
  words = input.split(/[^[[:word:]]']+/)
  littlewords = ["a", "an", "the", "at", "by", "for", "in", "of", "on", "to", "up", "and", "as", "but", "or",  "nor", "over"]
  words.each_index do |i|
    if !littlewords.include?(words[i]) || i = 0
      words[i].capitalize!
    end
  end
words.join(" ")
end
