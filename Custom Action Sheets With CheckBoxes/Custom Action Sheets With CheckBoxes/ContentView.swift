//
//  ContentView.swift
//  Custom Action Sheets With CheckBoxes
//
//  Created by Elaidzha Shchukin on 24.01.2023.
//

import MapKit
import SwiftUI

struct ContentView: View {
    var body: some View {

   Text("fff")
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CheckBox: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.028511, longitude: 105.804817),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    var bady: some View {
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
            
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
        })
    }
}
