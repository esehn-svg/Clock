//
//  WorldClockView.swift
//  Clock
//
//  Created by Ella Sehn on 2026-02-24.
//

import SwiftUI

struct WorldClockView: View {
    var body: some View {
        NavigationStack {
            VStack {
                // Ottawa
                ExtractedView(timeZoneOffset: "+0", city: "Ottawa", time: "6:35", amOrPm: "AM")
                //Vancouver
                HStack {
                    ExtractedView(timeZoneOffset: "-3", city: "Vancouver", time: "3:35", amOrPm: "AM")
                }
            }
                    .navigationTitle("World Clock")
                    .toolbar {
                        
                        ToolbarItem(placement: .topBarLeading) {
                            
                            Button("Edit") {
                                // Does nothing right now
                            }
                            
                        }
                        
                        ToolbarItem(placement: .primaryAction) {
                            Button {
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                    }

            }
        }
    }

#Preview {
    LandingView()
}

struct ExtractedView: View {
    // Stored Properties
    let timeZoneOffset: String
    let city: String
    let time: String
    let amOrPm: String
    
    
    var body: some View {
        // Ottawa
        HStack {
            // Left Side
            VStack(alignment: .leading) {
                Text("Today, \(timeZoneOffset)HRS")
                Text(city)
                    .font(.system(.largeTitle, design: .default, weight: .thin))
            }
            
            Spacer()
            
            // Right Side
            Text(time)
                .font(.system(size: 64.0, weight: .thin, design: .default))
            Text(amOrPm)
                .font(.system(.largeTitle, design: .default, weight: .thin))
            
        }

    }
}
