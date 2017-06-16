# IsoCountryCodes for Swift
![Platform](https://img.shields.io/cocoapods/p/Typist.svg?style=flat)
![version](https://img.shields.io/badge/version-1.0-brightgreen.svg)
![Swift Version](https://img.shields.io/badge/swift-3.0-orange.svg?style=flat)

Iso country codes - that thing that we discussed that defines codes for the names of countries, dependent territories, and special areas of geographical interest.

### What?
This is a **iOS Swift** library/class  files that does a simple lookup depending on a [alpha2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 "alpha2"), [alpha3](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 "alpha3") or [numeric](http://en.wikipedia.org/wiki/ISO_3166-1_numeric "numeric") value you give it. Currently it holds all the 249 countries, territories, or areas of geographical interest that are assigned official codes in [ISO 3166-1](http://en.wikipedia.org/wiki/ISO_3166-1 "ISO 3166-1").

### Features:

This library returns ISO codes, names and currencies for countries.

- [x] Find by alpha-2, alpha-3 or numeric (String - yes I know...)
- [x] Search by name
- [x] Search by currency code
- [x] Search by by dialing code (+31 for Nethelands, +1 for USA, etc...)
- [x] Retrieve a corresponding emoji flag from a country code.

### Usage:

You can search via numeric, alpha-2 or alpha-3 format. 
Searching an ISO code returns a struct. 

```swift
print(IsoCountryCodes.find(key: "020").name) //Andorra
print(IsoCountryCodes.find(key: "TK").name) //Tokelau
print(IsoCountryCodes.find(key: "TKL").currency) //NZD
```

You can also search by country name, currency or calling/dialing code
```swift
dump(IsoCountryCodes.searchByName(name: "Netherlands")
print(IsoCountryCodes.searchByCurrency(currency: "EUR").count ) // 31
print(IsoCountryCodes.searchByCallingCode(calllingCode: "+31").name ) // Netherlands

let country = IsoCountryCodes.searchByName(name: "Netherlands")
dump(country) // This dumps the full struct in console
```
This returns a `IsoCountryInfo` struct:
```swift
▿ IsoCountryCodes.IsoCountryInfo
    - name: Netherlands
    - numeric: 528
    - alpha2: NL
    - alpha3: NLD
    - calling: +31
    - currency: EUR
    - continent: EU
```

### Fun with flags
Retrieve a corresponding emoji flag from a country code. (Thanks to @lorismaz for this addition!)

```swift
let emojiString = IsoCountries.flag(countryCode: "NL")
// Prints 🇳🇱
``` 
or

```swift
let emojiString = IsoCountryCodes.find(key: "USA").flag
// Prints 🇺🇸
```

### Usage:

Copy/add files to your project

### Licence:

The 'do-whatever-you-please-with-it licence. Use it or abuse it. Just keep my name at the top of the files.
