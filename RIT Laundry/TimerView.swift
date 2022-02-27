//
//  TimerView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI



struct TimerView: View {
    
    @State private var isActive = false //isPaused opposite
    @State private var timeMin: Int = 0
    @State private var timeSec: Int = 5
    @State private var selectWash = ""
    let washCycles = ["Normal Hot", "Normal Warm", "Perm Press Warm", "Delicates Cold"]
    
    @State var timer: Timer? = nil
    
    
    private func startTime() {
        isActive = true
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ time in
            if timeSec == 0 && timeMin > 0{
                timeSec = 60
                timeMin = timeMin - 1
            }
            if timeSec > 0 {
            timeSec = timeSec - 1
            }
            
            if timeMin == 0 && timeSec == 0 {
                print("THE TIME IS EXPIRED!")
                NotificationCenter.default.post(name: NSNotification.Name(rawValue: "sendText"), object: nil)
                timer?.invalidate()
            }
        }
        
    }
    
    private func secondIntToString(sec: Int) -> String {
        if sec < 10 {
            return "0\(sec)"
        }
        return "\(sec)"
    }
    
    private func stopTime() {
        isActive = false
        timer?.invalidate()
        timer = nil
    }
    
    var body: some View {
        NavigationView{
        VStack{
            Picker("Wash Cycle", selection: $selectWash){
                ForEach(washCycles, id: \.self){
                    Text($0)
//                }
//                if selectWash == "Normal Hot" {
//                    timeMin = 29
//                }
//                if selectWash == "Normal Warm" {
//                    timeMin = 27
//               }
//                if selectWash == "Perm Press Warm" {
//                    timeMin = 25
//               }
//                else {
//                    timeMin = 23
//                }
               }
            }
            
            //.pickerStyle(.wheel)
            Text("Timer")
                .font(.system(size: 30))
                .padding(.bottom)
            Text("\(timeMin):\(self.secondIntToString(sec: self.timeSec))")
                .font(.system(size: 100))
            if isActive == false {
                HStack {
                    Button(action: {
                        print("RESTART")
                        timeMin = 45
                        timeSec = 0
                    }){
                        Image(systemName: "backward.fill")
                            .resizable()
                            .frame(width:60, height:50)
                            .foregroundColor(Color.orange)
                            .padding(.trailing, 50.0)
                    }
                    Button(action: {
                        self.startTime()
                        print("START")
                    }){
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width:50, height:50)
                            .foregroundColor(Color.orange)
                            .padding(.all)
                    }
                }
                .padding(.all)
            }
            else {
                Button(action: {
                    print("STOP")
                    self.stopTime()
                }){
                    Image(systemName: "stop.fill")
                        .resizable()
                        .frame(width:50, height:50)
                        .foregroundColor(Color.orange)
                        .padding(.all)
                }
                
                .padding(.all)
            }
            
        }
        .navigationBarTitle("RIT Laundry")
        
            
        }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView()
    }
}
