//
//  MapView.swift
//  XarisiosVamvakas
//
//  Created by Angelos Staboulis on 6/1/25.
//

import SwiftUI
import MapKit
struct MapView: View {
    var body: some View {
        VStack{
                  Map{
                      Marker("Γενέτηρα Χαρίσιου Βαμβακά", coordinate: CLLocationCoordinate2D(latitude: 40.300581, longitude:21.789813))
                  }
        }
    }
}

#Preview {
    MapView()
}
