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
            //Spacer()
            
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
            
            Spacer()
            //Spacer()
            //Spacer()
        }
    }
}

#Preview {
    SwiftUIXmasTree24()
        .preferredColorScheme(.dark)
}
