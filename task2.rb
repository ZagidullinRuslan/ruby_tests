day = ARGV[0].to_i 
monthString = ARGV[1]
year = ARGV[2].to_i
monthsArray = ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря']
$daysInMounthsAray = [31,28,31,30,31,30,31,31,30,31,30,31]
month = monthsArray.index(monthString)
def getDaysCount(m,y)
	if m != 1 # февраль
		return $daysInMounthsAray[m]
	end	
	if y%400==0 || (y%100!=0 && y%4==0) 
		return 	$daysInMounthsAray[m] + 1
	end 
	return $daysInMounthsAray[m]
end 
totalCountOfDaysInSelectedMonth = getDaysCount(month, year) 
countBuf = totalCountOfDaysInSelectedMonth - day 
month += 1
for i in month..11
countBuf += getDaysCount(i, year)
end
puts countBuf