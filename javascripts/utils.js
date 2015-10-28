function getDiffDatesInDays(firstDate, secondDate) {
	firstDate = new Date(firstDate);
	secondDate = new Date(secondDate);
	var timeDiff = Math.abs(secondDate.getTime() - firstDate.getTime());
	return parseInt(Math.ceil(timeDiff / (1000 * 3600 * 24)));
}

function getDiffDatesInYears(firstDate, secondDate) {
	var diffDays = getDiffDatesInDays(firstDate, secondDate);
	return parseInt(diffDays / 365);
}

function getMyAge() {
  return parseInt(getDiffDatesInYears(new Date('1989-07-05'), new Date()));
}

function getDifferenceDatesNatLang(firstDate, secondDate) {
	var totalYears = getDiffDatesInYears(firstDate, secondDate);
	var deltaMonths = Math.round((getDiffDatesInDays(firstDate, secondDate) - (totalYears * 365)) / 30)
	return totalYears + ' year' + (totalYears == 1 ? '' : 's')
		+ ' and ' + deltaMonths + ' months' ;
}
