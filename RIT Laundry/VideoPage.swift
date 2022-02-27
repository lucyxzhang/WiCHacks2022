//
//  VideoPage.swift
//  RIT Laundry
//
//  Created by Lucy Zhang on 2/27/22.
//

import SwiftUI
import AVKit

struct VideoPage: View {
    
    let videoPath: String
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: URL(fileURLWithPath: Bundle.main.path (forResource: "liquiddetergent", ofType: "mov")!)))

        }
                            .navigationTitle("How-To Video")
    }
}

struct VideoPage_Previews: PreviewProvider {
    static var previews: some View {
        VideoPage(videoPath: "path/to/video")
    }
}
