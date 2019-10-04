%dw 2.0
output application/json
---
using( myLocalVar = 
{
	names: ['avanthi','narendra chimakurthi','varshith','kumar','nihasvi on' ] map ((value,index) -> {
		name: if(contains(value,'th'))
				upper(value)
			  else
			  	if(value contains 'um')
					dw::core::Strings::capitalize(value)
				else 
				if(value contains 'na')
					dw::core::Strings::dasherize(value)
				else
				if(value contains 'ha')
					dw::core::Strings::underscore(value)
			  	else
			  		value
			  		,
		id: index
	}) 
}
)
myLocalVar