if ARGV.length != 2
  exit
end

arg1 = ARGV[0].to_i 
arg2 = ARGV[1].to_i 

if arg1 > 100000 || arg1 < 1 || arg2 > 100000 || arg2 < 1
  exit
end
 
totalSeconds = arg1 + arg2
totalMinutes = totalSeconds / 60
totalHours = totalMinutes / 60
totalDays = totalHours / 24

days = totalDays
hours = totalHours - days*24
minutes = totalMinutes - days*24*60 - hours*60
seconds = totalSeconds - days*24*60*60 - hours*60*60 - minutes*60 

resultString = ""

if days > 0
	resultString += days.to_s + " дней "
end

if days > 0 || hours > 0
	resultString += hours.to_s + " час "
end

if days > 0 || hours > 0 || minutes > 0
	resultString += minutes.to_s + " минут "
end

resultString += seconds.to_s + " секунд"

puts resultString
