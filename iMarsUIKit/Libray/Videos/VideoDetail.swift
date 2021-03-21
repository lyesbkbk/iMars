//
//  VideoDetail.swift
//  iMarsUIKit
//
//  Created by Catherine on 21/03/2021.
//

import SwiftUI
import AVKit

struct VideoDetail: View {
    var video: Video
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url:  URL(string: video.source)!)) {
                VStack {
                    Text(video.titel)
                        .font(.title)
                        .foregroundColor(.black)
                        .background(Color.white.opacity(0.7))
                    Spacer()
                }
            }
            Text(video.date)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.leading)
            Text(video.description)
        }
    }
}

struct VideoDetail_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            VideoDetail(video: Video.data[1])
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
