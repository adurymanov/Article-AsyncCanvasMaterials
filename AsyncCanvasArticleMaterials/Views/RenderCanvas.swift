import SwiftUI

struct RenderCanvas: View {
    
    let value: Double
    
    let pointOfInterest = PointOfInterest()
    
    var body: some View {
        Canvas(rendersAsynchronously: true) { context, _ in
            pointOfInterest.began("canvas_render")
            
            defer {
                pointOfInterest.end("canvas_render")
            }
            
            for _ in 0...Int(value) {
                let path = Path {
                    $0.move(to: .random)
                    $0.addLine(to: .random)
                }
                context.stroke(
                    path,
                    with: .color(.random),
                    style: StrokeStyle(lineWidth: 1)
                )
            }
        }
    }

}
