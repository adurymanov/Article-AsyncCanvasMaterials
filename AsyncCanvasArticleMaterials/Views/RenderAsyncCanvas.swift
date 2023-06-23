import SwiftUI
import AsyncCanvas

struct RenderAsyncCanvas: View {
    
    let value: Double
    
    let pointOfInterest = PointOfInterest()
    
    var body: some View {
        AsyncCanvas { context, _ in
            pointOfInterest.began("async_canvas_render")
            
            defer {
                pointOfInterest.end("async_canvas_render")
            }
            
            for _ in 0...Int(value) {
                guard !Task.isCancelled else {
                    return
                }
                context.move(to: .random)
                context.addLine(to: .random)
                context.setStrokeColor(.random)
                context.strokePath()
            }
        }
    }
    
}
