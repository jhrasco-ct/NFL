//
//  PlayerUIView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import AVKit
import UIKit

class PlayerUIView: UIView {

  private var videoURL: String?
  private let playerLayer = AVPlayerLayer()

  init(videoURL: String) {
    super.init(frame: .zero)

    clipsToBounds = true
    layer.masksToBounds = true
    self.videoURL = videoURL
    setUpPlayer()
  }

  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func layoutSubviews() {
    super.layoutSubviews()
    playerLayer.frame = bounds
  }

  private func setUpPlayer() {
    guard let videoURL = videoURL else { return }
    let url = URL(string: videoURL)!
    let player = AVPlayer(url: url)
    player.play()

    playerLayer.player = player
    layer.addSublayer(playerLayer)
  }

}
