//
//  VacancyView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI

struct VacancyView: View {
    var body: some View {
        NavigationView {
            VStack (spacing: 10){
                RoundedRectangle(cornerRadius: 1, style: .continuous)
                    .fill(Color.orange)
                    .frame(height: 2)
            Text("Availability Tab")
                Spacer()
                .navigationBarTitle("RIT Laundry")
            }
        }
    }
}

struct VacancyView_Previews: PreviewProvider {
    static var previews: some View {
        VacancyView()
    }
}
