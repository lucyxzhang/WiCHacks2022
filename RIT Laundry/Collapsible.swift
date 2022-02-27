//
//  CollapsibleView.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/26/22.
//

import SwiftUI
//credit where credit is due
//collapsible content from https:// betterprogramming.pub/how-to-write-a-collapsible-expandable-view-for-your-swiftui-app-d4a47fe8cb52
struct Collapsible<Content: View>: View {
    @State var label: () -> Text
    @State var content: () -> Content
    
    @State private var collapsed: Bool = true
    
    var body: some View {
        VStack {
            Button(
                action: { self.collapsed.toggle() },
                label: {
                    HStack {
                        self.label()
                        Spacer()
                        Image(systemName: self.collapsed ? "chevron.down" : "chevron.up")
                    }
                    .padding(.bottom, 1)
                    .background(Color.white.opacity(0.01))
                }
            )
            .buttonStyle(PlainButtonStyle())
            
            VStack {
                self.content()
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: collapsed ? 0 : .none)
            .clipped()
        }
    }
}

