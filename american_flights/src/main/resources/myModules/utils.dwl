/*
 * utils.dwl 
 * this file contains all utility funs
 */
 
 fun getNumSeats(flightType: String) = (
	if(contains(flightType, '727'))
		120
	else if(contains(flightType, '737'))
		220
	else if(contains(flightType, '747'))
		320
	else 
		450
)

//generates random number for flight id
fun genFlightId(carrierName: String) = (
	using(carrier = upper(carrierName))
	using(randId = ceil(random() * 10000 as String))
	
	if(contains(carrier,'UNITED'))
		'UA-' ++ randId
	else if(carrier contains 'AMERICAN')
		'AA-' ++ randId
	else if(carrier contains 'DELTA')
		'DL-' ++ randId
	else
		'XX-' ++ randId
	
)