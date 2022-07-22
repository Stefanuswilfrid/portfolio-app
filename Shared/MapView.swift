//
//  MapView.swift
//  portfolio-app
//
//  Created by Stefanus Wilfrid Admaja on 21/07/22.
//

import Foundation
import UIKit
import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    typealias UIViewType = UIView
    
    func makeUIView(context: Context) -> UIView {
        //do nothing
        let view = UIView()
        
        let coordinate = CLLocationCoordinate2D(latitude: -6.200000, longitude: 106.816666)
        
        let map = MKMapView()
        map.setRegion(MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 70, longitudeDelta: 70)), animated: true)
        view.addSubview(map)
        
        map.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            map.widthAnchor.constraint(equalTo: view.widthAnchor),
            map.heightAnchor.constraint(equalTo: view.heightAnchor),
            map.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            map.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        //do nothing
        
    }
    
    
}
