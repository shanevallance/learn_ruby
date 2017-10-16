class Timer
  #write your code here
  def initialize seconds = 0
    @seconds = seconds
  end
  def seconds= input
    @seconds = input
  end
  def seconds
    @seconds
  end
  def time_string
    #Get hours
    hours = @seconds/3600
    #get minutes
    minutes = @seconds/60 - (hours * 60)
    #get seconds
    seconds = @seconds%60
    "#{hours.to_s.rjust(2,"0")}:#{minutes.to_s.rjust(2,"0")}:#{seconds.to_s.rjust(2,"0")}"
  end

end
