//
//  IsoCountryCodes.swift
//  IsoCountryCodes
//
//  Created by Sidney de Koning on 09/01/15.
//  Copyright (c) 2015 Funky Monkey, www.funky-monkey.nl. All rights reserved.
//

class IsoCountryCodes {

    class func find(key: String) -> IsoCountryInfo? {
        let countries = IsoCountries.allCountries.filter({ $0.alpha2 == key.uppercased() ||
            $0.alpha3 == key.uppercased() || $0.numeric == key })
        return countries.first
    }

    class func searchByName(_ name: String) -> IsoCountryInfo? {
        let countries = IsoCountries.allCountries.filter({ $0.name == name })
        return countries.first
    }

    class func searchByNumeric(_ numeric: String) -> IsoCountryInfo? {
        let countries = IsoCountries.allCountries.filter({ $0.numeric == numeric })
        return countries.first
    }

    class func searchByCurrency(_ currency: String) -> [IsoCountryInfo] {
        let countries = IsoCountries.allCountries.filter({ $0.currency == currency })
        return countries
    }

    class func searchByCallingCode(_ calllingCode: String) -> IsoCountryInfo? {
        let countries = IsoCountries.allCountries.filter({ $0.calling == calllingCode })
        return countries.first
    }
}
