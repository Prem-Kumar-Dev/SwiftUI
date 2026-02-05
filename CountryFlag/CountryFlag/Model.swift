//
//  Model.swift
//  CountryFlag
//
//  Created by Prem Kumar on 04/02/26.
//

import Foundation

struct Country: Identifiable{
    let id = UUID()
    let name: String
    let capital: String
    let flag: String
}

class CountryData: Identifiable {
    
    static let countries: [Country] = [
        // A
        Country(name: "Afghanistan", capital: "Kabul", flag: "af"),
        Country(name: "Albania", capital: "Tirana", flag: "al"),
        Country(name: "Algeria", capital: "Algiers", flag: "dz"),
        Country(name: "Andorra", capital: "Andorra la Vella", flag: "ad"),
        Country(name: "Angola", capital: "Luanda", flag: "ao"),
        Country(name: "Antigua and Barbuda", capital: "St. John's", flag: "ag"),
        Country(name: "Argentina", capital: "Buenos Aires", flag: "ar"),
        Country(name: "Armenia", capital: "Yerevan", flag: "am"),
        Country(name: "Australia", capital: "Canberra", flag: "au"),
        Country(name: "Austria", capital: "Vienna", flag: "at"),
        Country(name: "Azerbaijan", capital: "Baku", flag: "az"),
        
        // B
        Country(name: "Bahamas", capital: "Nassau", flag: "bs"),
        Country(name: "Bahrain", capital: "Manama", flag: "bh"),
        Country(name: "Bangladesh", capital: "Dhaka", flag: "bd"),
        Country(name: "Barbados", capital: "Bridgetown", flag: "bb"),
        Country(name: "Belarus", capital: "Minsk", flag: "by"),
        Country(name: "Belgium", capital: "Brussels", flag: "be"),
        Country(name: "Belize", capital: "Belmopan", flag: "bz"),
        Country(name: "Benin", capital: "Porto-Novo", flag: "bj"),
        Country(name: "Bhutan", capital: "Thimphu", flag: "bt"),
        Country(name: "Bolivia", capital: "Sucre", flag: "bo"),
        Country(name: "Bosnia and Herzegovina", capital: "Sarajevo", flag: "ba"),
        Country(name: "Botswana", capital: "Gaborone", flag: "bw"),
        Country(name: "Brazil", capital: "Brasília", flag: "br"),
        Country(name: "Brunei", capital: "Bandar Seri Begawan", flag: "bn"),
        Country(name: "Bulgaria", capital: "Sofia", flag: "bg"),
        Country(name: "Burkina Faso", capital: "Ouagadougou", flag: "bf"),
        Country(name: "Burundi", capital: "Gitega", flag: "bi"),
        
        // C
        Country(name: "Cambodia", capital: "Phnom Penh", flag: "kh"),
        Country(name: "Cameroon", capital: "Yaoundé", flag: "cm"),
        Country(name: "Canada", capital: "Ottawa", flag: "ca"),
        Country(name: "Cape Verde", capital: "Praia", flag: "cv"),
        Country(name: "Central African Republic", capital: "Bangui", flag: "cf"),
        Country(name: "Chad", capital: "N'Djamena", flag: "td"),
        Country(name: "Chile", capital: "Santiago", flag: "cl"),
        Country(name: "China", capital: "Beijing", flag: "cn"),
        Country(name: "Colombia", capital: "Bogotá", flag: "co"),
        Country(name: "Comoros", capital: "Moroni", flag: "km"),
        Country(name: "Congo (Brazzaville)", capital: "Brazzaville", flag: "cg"),
        Country(name: "Congo (Kinshasa)", capital: "Kinshasa", flag: "cd"),
        Country(name: "Costa Rica", capital: "San José", flag: "cr"),
        Country(name: "Croatia", capital: "Zagreb", flag: "hr"),
        Country(name: "Cuba", capital: "Havana", flag: "cu"),
        Country(name: "Cyprus", capital: "Nicosia", flag: "cy"),
        Country(name: "Czech Republic", capital: "Prague", flag: "cz"),
        
        // D
        Country(name: "Denmark", capital: "Copenhagen", flag: "dk"),
        Country(name: "Djibouti", capital: "Djibouti", flag: "dj"),
        Country(name: "Dominica", capital: "Roseau", flag: "dm"),
        Country(name: "Dominican Republic", capital: "Santo Domingo", flag: "do"),
        
        // E
        Country(name: "Ecuador", capital: "Quito", flag: "ec"),
        Country(name: "Egypt", capital: "Cairo", flag: "eg"),
        Country(name: "El Salvador", capital: "San Salvador", flag: "sv"),
        Country(name: "Equatorial Guinea", capital: "Malabo", flag: "gq"),
        Country(name: "Eritrea", capital: "Asmara", flag: "er"),
        Country(name: "Estonia", capital: "Tallinn", flag: "ee"),
        Country(name: "Eswatini", capital: "Mbabane", flag: "sz"),
        Country(name: "Ethiopia", capital: "Addis Ababa", flag: "et"),
        
        // F
        Country(name: "Fiji", capital: "Suva", flag: "fj"),
        Country(name: "Finland", capital: "Helsinki", flag: "fi"),
        Country(name: "France", capital: "Paris", flag: "fr"),
        
        // G
        Country(name: "Gabon", capital: "Libreville", flag: "ga"),
        Country(name: "Gambia", capital: "Banjul", flag: "gm"),
        Country(name: "Georgia", capital: "Tbilisi", flag: "ge"),
        Country(name: "Germany", capital: "Berlin", flag: "de"),
        Country(name: "Ghana", capital: "Accra", flag: "gh"),
        Country(name: "Greece", capital: "Athens", flag: "gr"),
        Country(name: "Grenada", capital: "St. George's", flag: "gd"),
        Country(name: "Guatemala", capital: "Guatemala City", flag: "gt"),
        Country(name: "Guinea", capital: "Conakry", flag: "gn"),
        Country(name: "Guinea-Bissau", capital: "Bissau", flag: "gw"),
        Country(name: "Guyana", capital: "Georgetown", flag: "gy"),
        
        // H
        Country(name: "Haiti", capital: "Port-au-Prince", flag: "ht"),
        Country(name: "Honduras", capital: "Tegucigalpa", flag: "hn"),
        Country(name: "Hungary", capital: "Budapest", flag: "hu"),
        
        // I
        Country(name: "Iceland", capital: "Reykjavik", flag: "is"),
        Country(name: "India", capital: "New Delhi", flag: "in"),
        Country(name: "Indonesia", capital: "Jakarta", flag: "id"),
        Country(name: "Iran", capital: "Tehran", flag: "ir"),
        Country(name: "Iraq", capital: "Baghdad", flag: "iq"),
        Country(name: "Ireland", capital: "Dublin", flag: "ie"),
        Country(name: "Israel", capital: "Jerusalem", flag: "il"),
        Country(name: "Italy", capital: "Rome", flag: "it"),
        Country(name: "Ivory Coast", capital: "Yamoussoukro", flag: "ci"),
        
        // J
        Country(name: "Jamaica", capital: "Kingston", flag: "jm"),
        Country(name: "Japan", capital: "Tokyo", flag: "jp"),
        Country(name: "Jordan", capital: "Amman", flag: "jo"),
        
        // K
        Country(name: "Kazakhstan", capital: "Astana", flag: "kz"),
        Country(name: "Kenya", capital: "Nairobi", flag: "ke"),
        Country(name: "Kiribati", capital: "Tarawa", flag: "ki"),
        Country(name: "Kosovo", capital: "Pristina", flag: "xk"),
        Country(name: "Kuwait", capital: "Kuwait City", flag: "kw"),
        Country(name: "Kyrgyzstan", capital: "Bishkek", flag: "kg"),
        
        // L
        Country(name: "Laos", capital: "Vientiane", flag: "la"),
        Country(name: "Latvia", capital: "Riga", flag: "lv"),
        Country(name: "Lebanon", capital: "Beirut", flag: "lb"),
        Country(name: "Lesotho", capital: "Maseru", flag: "ls"),
        Country(name: "Liberia", capital: "Monrovia", flag: "lr"),
        Country(name: "Libya", capital: "Tripoli", flag: "ly"),
        Country(name: "Liechtenstein", capital: "Vaduz", flag: "li"),
        Country(name: "Lithuania", capital: "Vilnius", flag: "lt"),
        Country(name: "Luxembourg", capital: "Luxembourg", flag: "lu"),
        
        // M
        Country(name: "Madagascar", capital: "Antananarivo", flag: "mg"),
        Country(name: "Malawi", capital: "Lilongwe", flag: "mw"),
        Country(name: "Malaysia", capital: "Kuala Lumpur", flag: "my"),
        Country(name: "Maldives", capital: "Malé", flag: "mv"),
        Country(name: "Mali", capital: "Bamako", flag: "ml"),
        Country(name: "Malta", capital: "Valletta", flag: "mt"),
        Country(name: "Marshall Islands", capital: "Majuro", flag: "mh"),
        Country(name: "Mauritania", capital: "Nouakchott", flag: "mr"),
        Country(name: "Mauritius", capital: "Port Louis", flag: "mu"),
        Country(name: "Mexico", capital: "Mexico City", flag: "mx"),
        Country(name: "Micronesia", capital: "Palikir", flag: "fm"),
        Country(name: "Moldova", capital: "Chișinău", flag: "md"),
        Country(name: "Monaco", capital: "Monaco", flag: "mc"),
        Country(name: "Mongolia", capital: "Ulaanbaatar", flag: "mn"),
        Country(name: "Montenegro", capital: "Podgorica", flag: "me"),
        Country(name: "Morocco", capital: "Rabat", flag: "ma"),
        Country(name: "Mozambique", capital: "Maputo", flag: "mz"),
        Country(name: "Myanmar", capital: "Naypyidaw", flag: "mm"),
        
        // N
        Country(name: "Namibia", capital: "Windhoek", flag: "na"),
        Country(name: "Nauru", capital: "Yaren", flag: "nr"),
        Country(name: "Nepal", capital: "Kathmandu", flag: "np"),
        Country(name: "Netherlands", capital: "Amsterdam", flag: "nl"),
        Country(name: "New Zealand", capital: "Wellington", flag: "nz"),
        Country(name: "Nicaragua", capital: "Managua", flag: "ni"),
        Country(name: "Niger", capital: "Niamey", flag: "ne"),
        Country(name: "Nigeria", capital: "Abuja", flag: "ng"),
        Country(name: "North Korea", capital: "Pyongyang", flag: "kp"),
        Country(name: "North Macedonia", capital: "Skopje", flag: "mk"),
        Country(name: "Norway", capital: "Oslo", flag: "no"),
        
        // O
        Country(name: "Oman", capital: "Muscat", flag: "om"),
        
        // P
        Country(name: "Pakistan", capital: "Islamabad", flag: "pk"),
        Country(name: "Palau", capital: "Ngerulmud", flag: "pw"),
        Country(name: "Palestine", capital: "Ramallah", flag: "ps"),
        Country(name: "Panama", capital: "Panama City", flag: "pa"),
        Country(name: "Papua New Guinea", capital: "Port Moresby", flag: "pg"),
        Country(name: "Paraguay", capital: "Asunción", flag: "py"),
        Country(name: "Peru", capital: "Lima", flag: "pe"),
        Country(name: "Philippines", capital: "Manila", flag: "ph"),
        Country(name: "Poland", capital: "Warsaw", flag: "pl"),
        Country(name: "Portugal", capital: "Lisbon", flag: "pt"),
        
        // Q
        Country(name: "Qatar", capital: "Doha", flag: "qa"),
        
        // R
        Country(name: "Romania", capital: "Bucharest", flag: "ro"),
        Country(name: "Russia", capital: "Moscow", flag: "ru"),
        Country(name: "Rwanda", capital: "Kigali", flag: "rw"),
        
        // S
        Country(name: "Saint Kitts and Nevis", capital: "Basseterre", flag: "kn"),
        Country(name: "Saint Lucia", capital: "Castries", flag: "lc"),
        Country(name: "Saint Vincent and the Grenadines", capital: "Kingstown", flag: "vc"),
        Country(name: "Samoa", capital: "Apia", flag: "ws"),
        Country(name: "San Marino", capital: "San Marino", flag: "sm"),
        Country(name: "Sao Tome and Principe", capital: "São Tomé", flag: "st"),
        Country(name: "Saudi Arabia", capital: "Riyadh", flag: "sa"),
        Country(name: "Senegal", capital: "Dakar", flag: "sn"),
        Country(name: "Serbia", capital: "Belgrade", flag: "rs"),
        Country(name: "Seychelles", capital: "Victoria", flag: "sc"),
        Country(name: "Sierra Leone", capital: "Freetown", flag: "sl"),
        Country(name: "Singapore", capital: "Singapore", flag: "sg"),
        Country(name: "Slovakia", capital: "Bratislava", flag: "sk"),
        Country(name: "Slovenia", capital: "Ljubljana", flag: "si"),
        Country(name: "Solomon Islands", capital: "Honiara", flag: "sb"),
        Country(name: "Somalia", capital: "Mogadishu", flag: "so"),
        Country(name: "South Africa", capital: "Pretoria", flag: "za"),
        Country(name: "South Korea", capital: "Seoul", flag: "kr"),
        Country(name: "South Sudan", capital: "Juba", flag: "ss"),
        Country(name: "Spain", capital: "Madrid", flag: "es"),
        Country(name: "Sri Lanka", capital: "Sri Jayawardenepura Kotte", flag: "lk"),
        Country(name: "Sudan", capital: "Khartoum", flag: "sd"),
        Country(name: "Suriname", capital: "Paramaribo", flag: "sr"),
        Country(name: "Sweden", capital: "Stockholm", flag: "se"),
        Country(name: "Switzerland", capital: "Bern", flag: "ch"),
        Country(name: "Syria", capital: "Damascus", flag: "sy"),
        
        // T
        Country(name: "Taiwan", capital: "Taipei", flag: "tw"),
        Country(name: "Tajikistan", capital: "Dushanbe", flag: "tj"),
        Country(name: "Tanzania", capital: "Dodoma", flag: "tz"),
        Country(name: "Thailand", capital: "Bangkok", flag: "th"),
        Country(name: "Timor-Leste", capital: "Dili", flag: "tl"),
        Country(name: "Togo", capital: "Lomé", flag: "tg"),
        Country(name: "Tonga", capital: "Nuku'alofa", flag: "to"),
        Country(name: "Trinidad and Tobago", capital: "Port of Spain", flag: "tt"),
        Country(name: "Tunisia", capital: "Tunis", flag: "tn"),
        Country(name: "Turkey", capital: "Ankara", flag: "tr"),
        Country(name: "Turkmenistan", capital: "Ashgabat", flag: "tm"),
        Country(name: "Tuvalu", capital: "Funafuti", flag: "tv"),
        
        // U
        Country(name: "Uganda", capital: "Kampala", flag: "ug"),
        Country(name: "Ukraine", capital: "Kyiv", flag: "ua"),
        Country(name: "United Arab Emirates", capital: "Abu Dhabi", flag: "ae"),
        Country(name: "United Kingdom", capital: "London", flag: "gb"),
        Country(name: "United States", capital: "Washington, D.C.", flag: "us"),
        Country(name: "Uruguay", capital: "Montevideo", flag: "uy"),
        Country(name: "Uzbekistan", capital: "Tashkent", flag: "uz"),
        
        // V
        Country(name: "Vanuatu", capital: "Port Vila", flag: "vu"),
        Country(name: "Vatican City", capital: "Vatican City", flag: "va"),
        Country(name: "Venezuela", capital: "Caracas", flag: "ve"),
        Country(name: "Vietnam", capital: "Hanoi", flag: "vn"),
        
        // Y
        Country(name: "Yemen", capital: "Sana'a", flag: "ye"),
        
        // Z
        Country(name: "Zambia", capital: "Lusaka", flag: "zm"),
        Country(name: "Zimbabwe", capital: "Harare", flag: "zw")
    ]
    
    private init() {}
}
