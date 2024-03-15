//
//  ImmersiveView.swift
//  ARDisplay
//
//  Created by Tuan Nguyen on 15/3/24.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
  var body: some View {
    
    // 27
    SkyView()
    // 18
    RealityView { content in
      if let scene = try? await Entity(named: "ImmersiveScene", in: realityKitContentBundle) {
        content.add(scene)
        // 28
        guard let resource = try? await EnvironmentResource(named: "Sunlight") else { return }
        let iblComponent = ImageBasedLightComponent(source: .single(resource), intensityExponent: 2.0)
        scene.components.set(iblComponent)
        scene.components.set(ImageBasedLightReceiverComponent(imageBasedLight: scene))
      }
    } update: { content in
      if let scene = content.entities.first {
        scene.availableAnimations.forEach { animation in
          scene.playAnimation(animation.repeat(), transitionDuration: 3, startsPaused: false)
        }
        // step 26
        scene.orientation = simd_quatf(angle: Float.pi/4, axis: [-0.5, 0.0, 0.0])
        // step 25
        let orbit = OrbitAnimation(duration: 20.0,
                                   axis: SIMD3<Float>(x: 0.1, y: 1.0, z: 0.0),
                                   startTransform: scene.transform,
                                   spinClockwise: false,
                                   orientToPath: true,
                                   rotationCount: 1.0,
                                   bindTarget: .transform,
                                   repeatMode: .repeat)
        
        if let animation = try? AnimationResource.generate(with: orbit) {
          scene.playAnimation(animation)
        }
      }
    }.offset(y: -2000) // step 22
      .offset(z: -1500)
  }
}

#Preview {
    ImmersiveView()
}
