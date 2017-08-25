    //
    //  Constants.swift
    //  rainyShinyCloudy
    //
    //  Created by Taimoor Saeed on 30/06/2017.
    //  Copyright © 2017 Taimoor. All rights reserved.
    //
    
    
    import Foundation
    
    
    let BASE_URL = "http://api.openweathermap.org/data/2.5/weather?"
    
    let LATITUDE = "lat="
    let LONGITUDE = "&lon="
    let API_ID = "&appid="
    let API_KEY = "7d93fa1fca5b9d823a05232e06a6df72"
    
    typealias DownloadComplete = () -> ()
    
    let CURRENT_WEATHER_URL = "http://api.openweathermap.org/data/2.5/weather?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&appid=7d93fa1fca5b9d823a05232e06a6df72"
    
    let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=7d93fa1fca5b9d823a05232e06a6df72"
    
    
