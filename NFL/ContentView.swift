//
//  ContentView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import SwiftUI

struct ContentView: View {

  private let videoURL = "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4"
  private let heightToWidthRatio = CGSize(width: 2.0, height: 3.0)

  var body: some View {
    GeometryReader { proxy in
      let height = proxy.size.width * (heightToWidthRatio.width / heightToWidthRatio.height)
      VStack(spacing: 50.0) {
        // NativePlayerView(videoURL: videoURL)
        //  .frame(width: proxy.size.width, height: height)
        CustomPlayerView(videoURL: videoURL)
          .frame(width: proxy.size.width, height: height)
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
