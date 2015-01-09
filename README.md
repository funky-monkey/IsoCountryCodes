#IsoCountryCodes for Swift

Iso country codes - that thing thsat we discussed that defines codes for the names of countries, dependent territories, and special areas of geographical interest.

###What?
This is a **iOS Swift** library/class  files that does a simple lookup depending on a [alpha2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 "alpha2"), [alpha3](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 "alpha3") or [numeric](http://en.wikipedia.org/wiki/ISO_3166-1_numeric "numeric") value you give it. Currently it holds all the 249 countries, territories, or areas of geographical interest that are assigned official codes in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1 "ISO 3166-1").

###Features:

This library returns ISO codes, names and currencies for countries.

- [x] Find by alpha-2, alpha-3 or numeric (String - yes I know...)
- [x] Search by name
- [x] Search by currency code
- [x] Search by by dialing code (+31 for Nethelands, +1 for USA, etc...)

###Usage:

Searching an ISO code returns a struct. 

```
// Search via numeric, alpha-2 or alpha-3 format     
println( IsoCountryCodes.find("020").name ) //Andorra
println( IsoCountryCodes.find("TK").name ) //Tokelau
println( IsoCountryCodes.find("TKL").currency ) // NZD

// You can also search by country name, currency or calling/dialing code
dump( IsoCountryCodes.searchByName("Netherlands" )
println( IsoCountryCodes.searchByCurrency("EUR").count ) // 31
println( IsoCountryCodes.searchByCallingCode("+31").name ) // Netherlands

var country = IsoCountryCodes.searchByName("Netherlands")
dump(country) // This dumps the full struct in console

/* 
	▿ IsoCountryCodes.IsoCountryInfo
	- name: Netherlands
	- numeric: 528
	- alpha2: NL
	- alpha3: NLD
	- calling: +31
	- currency: EUR
	- continent: EU
*/
```

###Usage:

Copy/add files to your project

###Licence:

The 'do-whatever-you-please-with-it licence. Use it or abuse it. Just keep my name at the top of the files.