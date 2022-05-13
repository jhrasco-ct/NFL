//
//  NativePlayerView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import AVKit
import SwiftUI

struct NativePlayerView: View {

  @State var player = AVPlayer()
  let videoURL: String

  var body: some View {
    ZStack {
      Color.black
      VideoPlayer(player: player)
        .onAppear() {
          player = AVPlayer(url: URL(string: videoURL)!)
        }
    }
  }
  
}

struct NativePlayerView_Previews: PreviewProvider {
  static var previews: some View {
    NativePlayerView(videoURL: "")
  }
}
