//
//  ContentView.swift
//  Custom Action Sheets With CheckBoxes
//
//  Created by Elaidzha Shchukin on 24.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            Text("Hello, world!")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CheckBox: View {
    
    @State var coordinate = MKCoordinateRegion(center: CCLocationCoordinate2D(latitude: 21.028511, longitude: 105.804817), latitudianalMeters: 10000, longtitudianalMeters: 10000 )
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top), content: {
            
            Map(coordinateRegion:
        }
    }
}
