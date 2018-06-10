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

hours = totalHours
minutes = totalMinutes - hours*60
seconds = totalSeconds - hours*60*60 - minutes*60 

puts hours.to_s + " час " + minutes.to_s + " минут " +  seconds.to_s + " секунд"