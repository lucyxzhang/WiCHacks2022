//
//  ContentView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI

class SenderController {
    
    static let normal = SenderController()
    
    @objc func sendText(num: String) {
        let req = URLSession.shared.dataTask(with: URL(string: "http://sevenbitboot.student.rit.edu:3001/sendmessage/" + num)!) {data, res, err in
            print(String(data: data ?? Data(), encoding: .utf8))
        }
        req.resume()
    }
    
    public func registerNotifications() {
        NotificationCenter.default.addObserver(forName: NSNotification.Name(rawValue: "sendText"), object: nil, queue: nil) { _ in
            self.sendText(num: "9729742944")
        }
    }
}

struct ContentView: View {
    @State private var selection = 0;
    var body: some View {
        
        VStack{
            TabView (selection: $selection){
                HomeView()
                    .tabItem {
                        Text("Home Text")
                            .foregroundColor(.black)
                        Image(systemName: "house.fill")
                    }
                    .tag(0)
                
                HowToView()
                    .tabItem {
                        Text("How To")
                        Image(systemName: "bookmark.circle.fill")
                    }
                    .tag(1)
                
                VacancyView()
                    .tabItem {
                        Image("logo60")
                    }
                    .tag(2)
                
                TimerView()
                    .tabItem {
                        Text("Timer")
                        Image(systemName: "timer")
                    }
                    .tag(3)
                
                ReportView()
                    .tabItem {
                        Text("Report")
                        Image(systemName: "ellipsis.bubble")
                    }
                    .tag(4)
            }
            
        }
        .border(Color.orange, width:1)

        .onAppear() {
            UITabBar.appearance().barTintColor = .black
        }
        
        .accentColor(.orange)
        .onAppear {
            SenderController.normal.registerNotifications()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            

    }
}


