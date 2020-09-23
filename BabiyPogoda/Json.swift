//
//  Json.swift
//  BabiyPogoda
//
//  Created by Сергей Бабий on 28.08.2020.
//  Copyright © 2020 Сергей Бабий. All rights reserved.
//

import Foundation

class Jcon : Decodable {
    
    var data : [Data]
    var weather : Weather?
    
    var city_name : String
    var lon : Double
    var lat : Double
    var timezone : String
    var country_code : String
    var state_code : String
        
    init(city_name : String, lon : Double, lat : Double, timezone : String, country_code : String, state_code : String, data : [Data], weather : Weather) {
        self.city_name = city_name
        self.country_code = country_code
        self.lat = lat
        self.lon = lon
        self.timezone = timezone
        self.state_code = state_code
        self.data = data
        self.weather = weather
    }
}

class Data : Decodable{
    var moonrise_ts : Int
    var wind_cdir : String
    var rh : Int
    var app_min_temp : Double
    var app_max_temp : Double
    var wind_spd : Double

    init(moonrise_ts : Int, wind_cdir : String, rh : Int,  app_min_temp : Double, app_max_temp : Double, wind_spd : Double) {
        self.moonrise_ts = moonrise_ts
        self.wind_cdir = wind_cdir
        self.rh = rh
        self.app_min_temp = app_min_temp
        self.app_max_temp = app_max_temp
        self.wind_spd = wind_spd
    }
}



class Weather : Decodable {
    var icon : String
    var code : Int
    var description : String
    
    init(icon : String, code : Int, description : String) {
        self.icon = icon
        self.code = code
        self.description = description
    }
}


