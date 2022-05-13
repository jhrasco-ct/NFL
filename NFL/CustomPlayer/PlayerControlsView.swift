//
//  PlayerControlsView.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import AVKit
import SwiftUI

struct PlayerControlsView: View {

  var body: some View {
    GeometryReader { proxy in
      ZStack {
        Color.black
          .opacity(0.6)
        VStack {
          HStack(spacing: proxy.size.width * 0.1) {
            Button {
            } label: {
              Image(systemName: "backward.end.fill")
                .resizable()
            }
            .buttonStyle(ControlButtonDefaultStyle())

            Button {
            } label: {
              Image(systemName: "gobackward.10")
                .resizable()
            }
            .buttonStyle(ControlButtonRoundStyle())

            Button {
            } label: {
              Image(systemName: "arrowtriangle.right.fill")
                .resizable()
            }
            .buttonStyle(ControlButtonPlayStyle())

            Button {
            } label: {
              Image(systemName: "goforward.10")
                .resizable()
            }
            .buttonStyle(ControlButtonRoundStyle())

            Button {
            } label: {
              Image(systemName: "forward.end.fill")
                .resizable()
            }
            .buttonStyle(ControlButtonDefaultStyle())
          }
        }
      }
    }
  }

}

struct PlayerControlsView_Previews: PreviewProvider {
  static var previews: some View {
    PlayerControlsView()
  }
}
