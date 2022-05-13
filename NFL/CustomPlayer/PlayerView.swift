//
//  PlayerView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import AVKit
import UIKit
import SwiftUI

struct PlayerView: UIViewRepresentable {

  let videoURL: String

  func updateUIView(_ uiView: PlayerUIView, context: Context) {

  }

  func makeUIView(context: Context) -> PlayerUIView {
    PlayerUIView(videoURL: videoURL)
  }

}
