# 🎄 The SwiftUI Christmas Tree 🌲

## Pure SwiftUI Christmas Tree and Fireworks Animations with yearly updates

Explore the Xcode project folder and check out the various SwiftUI animation files. Enjoy.

![SwiftUI Christmas Tree](https://github.com/GetStream/SwiftUIChristmasTree/blob/main/GIF%20Previews/SwiftUIChristmasTree24.gif)

## 2024 Christmas Tree

```swift
import SwiftUI

struct SwiftUIXmasTree24: View {
    @State private var isSpinning = false

    // MARK: - Constants
    private enum Constants {
        static let animationDuration = 1.5
        static let rotation3D = 60.0
        static let ornamentCount = 4
        static let spinAngle = 310.0
        static let staticAngle = 50.0
    }

    // MARK: - White Shades
    private let whiteShades = (1...10).map { Color.white.opacity(1.1 - Double($0) * 0.1) }

    // MARK: - Circle Configurations
    private struct CircleConfig {
        let size: CGFloat
        let strokeWidth: CGFloat
        let yOffset: CGFloat
        let ornament: String
        let ornamentSize: CGFloat
        let ornamentOffset: CGFloat
    }

    private let circleConfigs: [CircleConfig] = [
        CircleConfig(size: 20, strokeWidth: 1, yOffset: -160, ornament: "✨", ornamentSize: 4, ornamentOffset: -10),
        CircleConfig(size: 50, strokeWidth: 2, yOffset: -120, ornament: "🌟", ornamentSize: 6, ornamentOffset: -25),
        CircleConfig(size: 80, strokeWidth: 3, yOffset: -80, ornament: "★", ornamentSize: 8, ornamentOffset: -40),
        CircleConfig(size: 110, strokeWidth: 3, yOffset: -40, ornament: "⭐️", ornamentSize: 8, ornamentOffset: -55),
        CircleConfig(size: 140, strokeWidth: 3, yOffset: 0, ornament: "✨", ornamentSize: 10, ornamentOffset: -70),
        CircleConfig(size: 170, strokeWidth: 3, yOffset: 40, ornament: "✰", ornamentSize: 8, ornamentOffset: -85),
        CircleConfig(size: 200, strokeWidth: 5, yOffset: 80, ornament: "✧", ornamentSize: 10, ornamentOffset: -100),
        CircleConfig(size: 230, strokeWidth: 4, yOffset: 120, ornament: "♢", ornamentSize: 10, ornamentOffset: -115),
        CircleConfig(size: 260, strokeWidth: 5, yOffset: 160, ornament: "⭐︎", ornamentSize: 12, ornamentOffset: -130),
        CircleConfig(size: 290, strokeWidth: 5, yOffset: 200, ornament: "✦", ornamentSize: 12, ornamentOffset: -145)
    ]

    // MARK: - Helper Views
    private func CircleLayer(config: CircleConfig, index: Int) -> some View {
        ZStack {
            Circle()
                .stroke(lineWidth: config.strokeWidth)
                .frame(width: config.size, height: config.size)
                .foregroundStyle(whiteShades[index].gradient)

            ForEach(0..<Constants.ornamentCount, id: \.self) { i in
                Text(config.ornament)
                    .hueRotation(.degrees(isSpinning ? Double(i) * Constants.spinAngle : Double(i) * Constants.staticAngle))
                    .offset(y: config.ornamentOffset)
                    .rotationEffect(.degrees(Double(i) * -90))
                    .rotationEffect(.degrees(isSpinning ? 0 : -180))
                    .frame(width: config.ornamentSize, height: config.ornamentSize)
                    .animation(
                        .linear(duration: Constants.animationDuration)
                        .repeatForever(autoreverses: false)
                        .delay(Double(index) * 0.1),
                        value: isSpinning
                    )
            }
        }
        .rotation3DEffect(.degrees(Constants.rotation3D), axis: (x: 1, y: 0, z: 0))
        .offset(y: config.yOffset)
    }

    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "gift.circle")
                .font(.largeTitle)
                .phaseAnimator([false , true]) { sparkleSymbol, animate in
                    sparkleSymbol
                        .symbolEffect(.wiggle.byLayer, options: .repeat(3), value: animate)
                        .symbolEffect(.bounce.byLayer, options: .repeat(3), value: animate)
                        .symbolEffect(.pulse.byLayer, options: .repeat(3), value: animate)
                        .symbolEffect(.breathe.byLayer, options: .repeat(3), value: animate)
                }

            ZStack {
                ForEach(Array(circleConfigs.enumerated()), id: \.offset) { index, config in
                    CircleLayer(config: config, index: index)
                }
            }
            .onAppear { isSpinning.toggle() }
        }
    }
}

#Preview {
    SwiftUIXmasTree24()
        .preferredColorScheme(.dark)
}
```

## 2023 Christmas Tree

```swift
//  MARK: 2023 Christmas Tree
//  SwiftUIChristmasTree.swift
//  SwiftUIChristmasTree
//

import SwiftUI

struct SwiftUIXmasTree: View {

    @State private var isSpinning = false
    let coral = Color(#colorLiteral(red: 1, green: 0.4941176471, blue: 0.4745098039, alpha: 1))
    let peach = Color(#colorLiteral(red: 1, green: 0.831372549, blue: 0.4745098039, alpha: 1))
    let lightLimeGreen = Color(#colorLiteral(red: 0.831372549, green: 0.9843137255, blue: 0.4745098039, alpha: 1))
    let springGreen = Color(#colorLiteral(red: 0.2862745098, green: 0.9803921569, blue: 0.4745098039, alpha: 1))
    let paleAqua = Color(#colorLiteral(red: 0.2862745098, green: 0.9882352941, blue: 0.8392156863, alpha: 1))
    let skyBlue = Color(#colorLiteral(red: 0.2901960784, green: 0.8392156863, blue: 1, alpha: 1))
    let softLavender = Color(#colorLiteral(red: 0.4784313725, green: 0.5058823529, blue: 1, alpha: 1))
    let electricPurple = Color(#colorLiteral(red: 0.8470588235, green: 0.5137254902, blue: 1, alpha: 1))
    let olive = Color(#colorLiteral(red: 0.5764705882, green: 0.3529411765, blue: 0, alpha: 1))
    let forestGreen = Color(#colorLiteral(red: 0, green: 0.5607843137, blue: 0, alpha: 1))

    var body: some View {
        VStack {
            //Image(systemName: "wand.and.stars.inverse")
            Text("🎁")
                .font(.system(size: 64))
                .hueRotation(.degrees(isSpinning ? 0 : 150))
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true).delay(0.5), value: isSpinning)

            PresentView()

            ZStack {
                ZStack {
                    Circle() // MARK: One. No delay
                        .stroke(lineWidth: 1)
                        .frame(width: 20, height: 20)
                        .foregroundStyle(coral.gradient)

                    ForEach(0 ..< 4) {
                        //Circle()
                        Text("✨")
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -10)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 4, height: 4)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: -160)

                ZStack {
                    Circle() // MARK: Two. 0.1 delay
                        .stroke(lineWidth: 2)
                        .frame(width: 50, height: 50)
                        .foregroundStyle(peach.gradient)

                    ForEach(0 ..< 4) {
                        //Circle()
                        Text("🌟")
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -25)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 6, height: 6)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.1), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: -120)

                ZStack {
                    Circle() // Three. 0.2 delay
                        .stroke(lineWidth: 3)
                        .frame(width: 80, height: 80)
                        .foregroundStyle(lightLimeGreen.gradient)

                    ForEach(0 ..< 4) {
                        //Circle()
                        Text("💫")
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -40)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 8, height: 8)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.2), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: -80)

                ZStack {
                    Circle() // MARK: Four. 0.3 delay
                        .stroke(lineWidth: 3)
                        .frame(width: 110, height: 110)
                        .foregroundStyle(springGreen.gradient)

                    ForEach(0 ..< 4) {
                        Circle()
                            .foregroundColor(.red)
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -55)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 8, height: 8)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.3), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: -40)

                ZStack {
                    Circle() // MARK: Five. 0.4 delay
                        .stroke(lineWidth: 3)
                        .frame(width: 140, height: 140)
                        .foregroundStyle(paleAqua.gradient)

                    ForEach(0 ..< 4) {
                        Circle()
                            .foregroundStyle(.red.gradient)
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -70)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 10, height: 10)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.4), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 0)

                ZStack {
                    Circle() // MARK: Six. 0.5 delay
                        .stroke(lineWidth: 3)
                        .frame(width: 170, height: 170)
                        .foregroundStyle(skyBlue.gradient)

                    ForEach(0 ..< 4) {
                        Circle()
                            .foregroundStyle(.red.gradient)
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -85)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 8, height: 8)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.5), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 40)

                ZStack {
                    Circle() // MARK: Seven. 0.6 delay
                        .stroke(lineWidth: 5)
                        .frame(width: 200, height: 200)
                        .foregroundStyle(softLavender.gradient)

                    ForEach(0 ..< 4) {
                        Image(systemName: "star")
                            .foregroundStyle(.red.gradient)
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -100)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.6), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 80)

                ZStack {
                    Circle() // MARK: Eight. 0.7 delay
                        .stroke(lineWidth: 4)
                        .frame(width: 230, height: 230)
                        .foregroundStyle(electricPurple.gradient)

                    ForEach(0 ..< 4) {
                        Circle()
                            .foregroundStyle(.red.gradient)
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -115)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 10, height: 10)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.7), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 120)

                ZStack {
                    Circle() // MARK: Nine. 0.8 delay
                        .stroke(lineWidth: 5)
                        .frame(width: 260, height: 260)
                        .foregroundStyle(olive.gradient)

                    ForEach(0 ..< 4) {
                        //Circle()
                        Text("🧧")
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -130)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .frame(width: 12, height: 12)
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.8), value: isSpinning)
                    }
                }
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 160)


                ZStack {
                    Circle() // MARK: Ten. 0.9 delay
                        .stroke(lineWidth: 5)
                        .foregroundStyle(forestGreen.gradient)

                    ForEach(0 ..< 4) {
                        Text("💐")
                            .rotationEffect(.degrees(-45))
                            .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                            .offset(y: -145)
                            .rotationEffect(.degrees(Double($0) * -90))
                            .rotationEffect(.degrees(isSpinning ? 0 : -180))
                            .animation(.linear(duration: 1.5).repeatForever(autoreverses: false).delay(0.9), value: isSpinning)
                    }
                }
                .frame(width: 290, height: 290)
                .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                .offset(y: 200)
            }
            .onAppear() {
                isSpinning.toggle()
            }
        }
    }
}

#Preview {
    SwiftUIXmasTree()
        .preferredColorScheme(.dark)
}

```

## SwiftUI Christmas tree and fireworks: Coming on 31/12/2024. Stay tuned.
