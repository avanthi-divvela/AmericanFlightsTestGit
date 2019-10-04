%dw 2.0
output application/json
---
{
	city: 'East Rutherford',
	hub: 'American Airlines',
	flightData: 
	{
		toCity: payload.toAirportCode,
	    carrier: payload.airline ++  ' Airlines'
	}
}