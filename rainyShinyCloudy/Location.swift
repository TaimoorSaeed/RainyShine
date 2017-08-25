//
//  Location.swift
//  rainyShinyCloudy
//
//  Created by Taimoor Saeed on 25/08/2017.
//  Copyright © 2017 Taimoor. All rights reserved.
//



import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    
    var latitude : Double!
    var longitude : Double!
    
    
}
