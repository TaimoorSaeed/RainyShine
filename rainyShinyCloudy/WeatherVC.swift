
//
//  WeatherVC.swift
//  rainyShinyCloudy
//
//  Created by Taimoor Saeed on 29/06/2017.
//  Copyright © 2017 Taimoor. All rights reserved.



import UIKit

class WeatherVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var currentTemoLabel: UILabel!
    @IBOutlet weak var currentWeatherImage: UIImageView!
    @IBOutlet weak var currentWeatherTypeLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    
    var currentWeather : CurrentWeather!
    var forecast : Forecast!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        currentWeather = CurrentWeather()
        forecast = Forecast()
        
        currentWeather.downloadWeatherDetails {
            self.updateMainUI()
        }
    }
    
    func downloadForecastData(completed: DownloadComplete){
        //Forecast weather data for tableview
        
        
    }
  
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "weatherCell", for: indexPath)
        return cell
    }
    
    func updateMainUI() {
        dateLabel.text = currentWeather.date
        currentTemoLabel.text = "\(currentWeather.currentTemp)°"
        currentWeatherTypeLabel.text = currentWeather.weatherType
        print(currentWeather.weatherType)
        locationLabel.text = currentWeather.cityName
        print(currentWeather.cityName)
        currentWeatherImage.image = UIImage(named: currentWeather.weatherType)
    }
    
    
}

