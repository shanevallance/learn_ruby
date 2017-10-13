class Book
# write your code here
  def title= input
    @title = titleize(input)
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
  def title
    @title
  end

end
