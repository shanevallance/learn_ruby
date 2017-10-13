#write your code here
def translate(input)
  words = input.downcase.split(/[^[[:word:]]']+/)
  words.each_index do |i|
    #if first letter is not a vowel
    #I'm positive there is a more concise way to do this
    if !%w[a e i o u].include?(words[i][0])
      #if second letter is not a vowel or if there are any known phenome in the first 3
      if !%w[a e i o u].include?(words[i][1]) || %w[sch qu].any? {|phenome| words[i][0..2].include?(phenome)}
        #if the third letter is consonant or if the last 2 are any 2 letter phenomes
        if !%w[a e i o u].include?(words[i][2]) || words[i][0..2].include?("sch") || words[i][1..2].include?("qu")
          words[i] = words[i].concat("#{words[i][0..2]}ay")[3..-1]
        else
          words[i] = words[i].concat("#{words[i][0..1]}ay")[2..-1]
        end
      #if second letter is vowel
      else
        words[i] = words[i].concat("#{words[i][0]}ay")[1..-1]
      end
    #if first letter is a vowel
    else
      words[i].concat('ay')
    end
  end
  words.join(" ")
end
