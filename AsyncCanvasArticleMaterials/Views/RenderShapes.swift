import SwiftUI

struct RenderShapes: View {
    
    let value: Double
    
    var body: some View {
        ZStack {
            ForEach(0...Int(value), id: \.self) { _ in
                Path { path in
                    path.move(to: .random)
                    path.addLine(to: .random)
                }
                .stroke(
                    Color.random,
                    style: StrokeStyle(
                        lineWidth: 1,
                        lineCap: .round,
                        lineJoin: .round
                    )
                )
            }
        }
        .drawingGroup()
    }
    
}
