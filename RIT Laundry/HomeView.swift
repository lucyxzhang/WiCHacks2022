//
//  HomeView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Group{
                RoundedRectangle(cornerRadius : 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
                
                HStack {
                    Text("Home: How To Use This App")
                    Spacer()
                }
                .padding(.bottom)
                
                Divider()
                    .padding(.bottom)
                
                Collapsible(
                    label: { Text("Timer") },
                    content: {
                        HStack {
                            Text("Click on the Timer icon at the bottom of your screen to know when your laundry is done.")
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.secondary)
                    }
                )
                .frame(maxWidth: .infinity)
                
                Divider()
                Collapsible(
                    label: { Text("How To") },
                    content: {
                        HStack {
                            Text("INSERT TEXT")
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.secondary)
                    }
                )
                Divider()
                Collapsible(
                    label: { Text("Availability") },
                    content: {
                        HStack {
                            Text("INSERT TEXT")
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.secondary)
                    }
                )
                Divider()
                }
                Collapsible(
                    label: { Text("Work Orders") },
                    content: {
                        HStack {
                            Text("INSERT TEXT")
                            Spacer()
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.secondary)
                    }
                )
        Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle("RIT Laundry")
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
