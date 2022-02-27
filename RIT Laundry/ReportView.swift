//
//  ReportView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI

struct ReportView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Link("Submit a Work Order", destination: URL(string: "https://www.rit.edu/facilitiesmanagement/request-service")!)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 20))
                Text("Work Orders are used for requesting repair services to maintain everyday operations and reporting problems/issues with existing features and equipment. \n \nWork orders may also be submitted by texting “work order” to 585-475-FMS1(3671).")
                    .padding(.horizontal, 30.0)
                Spacer()
            }
            .navigationBarTitle("Work Order")
        }
    }
}

struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
    }
}
