day = ARGV[0].to_i 
monthString = ARGV[1]
year = ARGV[2].to_i
monthsArray = ['января', 'февраля', 'марта', 'апреля', 'мая', 'июня', 'июля', 'августа', 'сентября', 'октября', 'ноября', 'декабря']
month = monthsArray.index(monthString)
month += 1
def g(y)
	return (1 - ((y%4 + 2)/(y%4 + 1))) * ((y%100 + 2)/(y%100 + 1)) + (1 - ((y%400 + 2)/(y%400 + 1)))
end
def f(m,y)
	return 28 + (m + (m/8))%2 + 2%m + ((1 + g(y)) / m) + 1/m - g(y)/m
end	
totalCountOfDaysInSelectedMonth = f(month, year) 
countBuf = totalCountOfDaysInSelectedMonth - day 
month += 1
for i in month..12
countBuf += f(i, year)
end
puts countBuf