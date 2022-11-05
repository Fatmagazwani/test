//
//  AddressModel.swift
//  Artopia
//
//  Created by Fatma Gazwani on 09/04/1444 AH.
//

import MapKit
enum MapDetailes{
    static let staringLocation = CLLocationCoordinate2D(latitude: 24.8610890, longitude: 46.7255747)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
}

final class AddressModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
    @Published  var region = MKCoordinateRegion(center: MapDetailes.staringLocation, span: MapDetailes.defaultSpan)
    var locationManager: CLLocationManager?
    func checkIfLocationServicesIsEnabled(){
        if CLLocationManager.locationServicesEnabled(){
            locationManager=CLLocationManager()
            checkLocationAuthorization()
            locationManager?.desiredAccuracy = kCLLocationAccuracyBest
            locationManager?.delegate = self
        } else {
            print("show an alert letting them know this is off ang to go turn it on.")
        }
    }
    private func checkLocationAuthorization(){
        guard let locationManager = locationManager else {return}
        switch locationManager.authorizationStatus{case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted")
        case .denied:
            print("Your have denied this app location permission. Go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetailes.defaultSpan)
        @unknown default:
            break
        }
        
    }
    
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        checkLocationAuthorization()
    }
    
}

