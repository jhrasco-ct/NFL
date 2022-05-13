//
//  VideoPlayerView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import AVKit
import SwiftUI
import Combine

struct CustomPlayerView: View {

  let videoURL: String

  @State var player = AVPlayer()
  @State private var shouldShowControl = false
  @State private var currentDate = Date()

  @State private var hideControlTimer = Timer.publish(every: 3.0, on: .main, in: .common)
  @State private var timerCancellable: Cancellable?

  var body: some View {
    ZStack {
      Color.black
      PlayerView(videoURL: videoURL)
      PlayerControlsView()
        .opacity(shouldShowControl ? 1.0 : 0.0)
        .transition(.opacity)
    }
    .onTapGesture {
      withAnimation(.easeInOut(duration: 0.2)) {
        shouldShowControl.toggle()
      }
    }
    .onReceive(hideControlTimer) { _ in
      withAnimation(.easeInOut(duration: 0.2)) {
        shouldShowControl = false
      }
    }
  }

  private func restartTimer() {
    timerCancellable?.cancel()
    hideControlTimer = Timer.publish(every: 3.0, on: .main, in: .common)
    timerCancellable = hideControlTimer.connect()
  }

}

struct CustomPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    CustomPlayerView(videoURL: "")
  }
}
