%dw 2.0
output application/xml encoding='UTF-8'
---
flight: {
	city: 'East Rutherford',
	hub: 'American Airlines',
	flightData @(toCity: payload.toAirportCode, carrier: payload.airline ++ ' Airlines'): 
	{
		toCity: payload.toAirportCode,
	    carrier: payload.airline ++  ' Airlines'
	}
}