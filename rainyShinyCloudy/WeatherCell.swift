//
//  WeatherCell.swift
//  rainyShinyCloudy
//
//  Created by Taimoor Saeed on 01/07/2017.
//  Copyright © 2017 Taimoor. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    @IBOutlet weak var weatherIcon: UIImageView!
    @IBOutlet weak var dayLabel: UILabel!
    
    
    @IBOutlet weak var weatherType: UILabel!

    @IBOutlet weak var highTemp: UILabel!
    @IBOutlet weak var lowTemp: UILabel!
    
   
    func configureCell(forecast: Forecast){
        lowTemp.text = "\(forecast.lowTem)"
        highTemp.text = "\(forecast.highTemp)"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayLabel.text = forecast.date
    }
    
    
}
