if ARGV.length != 2
  exit
end

arg1 = ARGV[0].to_i 
arg2 = ARGV[1].to_i 

if arg1 > 100000 || arg1 < 1 || arg2 > 100000 || arg2 < 1
  exit
end
 
totalSeconds = arg1 + arg2