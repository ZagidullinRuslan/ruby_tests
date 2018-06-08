if ARGV.length != 2
  puts false
  exit
end

arg1 = ARGV[0].to_i 
arg2 = ARGV[1].to_i 

if arg1 >= 10000 || arg1 <= 1 || arg2 >= 10000 || arg2 <= 1
  puts false
  exit
end
 
puts arg1 % arg2 > 0 && arg2 % arg1 > 0 ? true : false 