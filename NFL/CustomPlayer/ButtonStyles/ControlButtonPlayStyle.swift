//
//  ControlButtonPlayStyle.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import SwiftUI

struct ControlButtonPlayStyle: ButtonStyle {

  func makeBody(configuration: Configuration) -> some View {
    ZStack {
      Color.white
        .frame(width: 60.0, height: 60.0)
        .clipShape(Circle())
        .opacity(0.5)

      configuration.label
        .scaledToFit()
        .frame(width: 20.0, height: 20.0)
        .foregroundColor(.white)
    }
  }

}
