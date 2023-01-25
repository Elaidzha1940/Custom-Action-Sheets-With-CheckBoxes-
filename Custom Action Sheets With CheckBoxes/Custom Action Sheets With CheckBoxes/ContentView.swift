//
//  ContentView.swift
//  Custom Action Sheets With CheckBoxes
//
//  Created by Elaidzha Shchukin on 24.01.2023.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 21.028511, longitude: 105.804817),
                                                   span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    @State var filters = [
        
        FilterItem(title: "ff", checked: false),
        FilterItem(title: "ff", checked: false),
        FilterItem(title: "ff", checked: false),
        FilterItem(title: "ff", checked: false),
        FilterItem(title: "ff", checked: false),
    ]
    
    var body: some View {

        ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top),
               content: {
            
            Map(coordinateRegion: $region)
                .ignoresSafeArea()
            
            Button (action: {}, label: {
                
                Image(systemName: "slider.vertical.3")
                    .font(.title2)
                    .foregroundColor(.black)
                    .padding(.vertical, 10)
                    .padding(.horizontal, 15)
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: 5, y: 5)
                    .shadow(color: Color.black.opacity(0.1), radius: 5, x: -5, y: -5)
                
                
            })
            .padding(.trailing)
            .padding(.top, -10)
            
            VStack {
                
                Spacer()
                
                VStack(spacing: 18) {
                    
                    HStack {
                        
                        Text("Search by")
                            .font(.title2)
                            .foregroundColor(.black)
                        
                        Spacer()
                        
                        Button (action: {}, label: {
                            Text("Done")
                                .fontWeight(.bold)
                                .foregroundColor(Color.green)
                        })
                    }
                    .padding([.horizontal, .top])
                    .padding(.bottom, 10)
                    
                    ForEach(filters) { filter in
                        
                        Text(filter.title)
                    }
                }
                .background(Color.white)
            }
        })
    }
}

struct ListView: View {
    
    @State var filters: FilterItem
    
    var body: some View {
        
        HStack {
            
            Text(filter.title)
                .fontWeight(.semibold)
                .foregroundColor(Color.black.opacity(0.7))
            
            Spacer()
            
            ZStack {
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FilterItem: Identifiable {
    
    var id = UUID().uuidString
    var title: String
    var checked: Bool
    
}

var filters = [

    FilterItem(title: "", checked: false),
    FilterItem(title: "", checked: false),
    FilterItem(title: "", checked: false),
    FilterItem(title: "", checked: false),
    FilterItem(title: "", checked: false),
]
