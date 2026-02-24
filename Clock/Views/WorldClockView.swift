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
                HStack {
                    // Left Side
                    VStack {
                        Text("Today, +0HRS")
                        Text("Ottawa")
                            .font(.system(.largeTitle, design: .default, weight: .thin))
                    }
                    
                    Spacer()
                    
                    // Right Side
                    Text("6:35")
                        .font(.system(size: 64.0, weight: .thin, design: .default))
                    Text("AM")
                        .font(.system(.largeTitle, design: .default, weight: .thin))
                    
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
