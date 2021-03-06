arg1 = ARGV[0].to_i 
arg2 = ARGV[1].to_i 

totalSeconds = arg1 + arg2
totalMinutes = totalSeconds / 60
totalHours = totalMinutes / 60
totalDays = totalHours / 24

days = totalDays
hours = totalHours - days*24
minutes = totalMinutes - days*24*60 - hours*60
seconds = totalSeconds - days*24*60*60 - hours*60*60 - minutes*60 
resultString = ""
daysArray = [' день ', ' дня ', ' дней ']
hoursArray = [' час ', ' часа ', ' часов ']
minutesArray = [' минута ', ' минуты ', ' минут ']
secondsArray = [' секунда', ' секунды', ' секунд']
$firstFormEnding = [1]
$secondFormEnding = [2,3,4] 
$thirdFormEnding = [0,5,6,7,8,9]
$thirdFormEndingExtra = [11,12,13,14]
def gettFormId(num)
	for i in $thirdFormEndingExtra
		if i == num
			return 2
		end
	end
	for i in $thirdFormEnding
		if (num-i)%10 == 0 && (num-i) >= 0
			return 2 
		end 
	end	
	for i in $secondFormEnding
		if (num-i)%10 == 0 && (num-i) >= 0
			return 1 
		end 
	end	
	for i in $firstFormEnding
		if (num-i)%10 == 0 && (num-i) >= 0
			return 0 
		end 
	end	
	return 2
end
if days > 0
	formId = gettFormId(days)

	resultString += days.to_s + daysArray[formId]
end
if hours > 0
	formId = gettFormId(hours)
	resultString += hours.to_s + hoursArray[formId]
end
if minutes > 0
	formId = gettFormId(minutes)
	resultString += minutes.to_s + minutesArray[formId]
end
if seconds > 0
	formId = gettFormId(seconds)
	resultString += seconds.to_s + secondsArray[formId]
end
resultString.rstrip!
puts resultString