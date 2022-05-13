//
//  ControlButtonRoundStyle.swift
//  NFL
//
//  Created by John Harold Rasco on 5/13/22.
//

import SwiftUI

struct ControlButtonRoundStyle: ButtonStyle {

  func makeBody(configuration: Configuration) -> some View {
    configuration.label
      .scaledToFit()
      .frame(width: 25.0, height: 25.0)
      .foregroundColor(.white)
      .opacity(configuration.isPressed ? 0.5 : 1.0)
  }

}
