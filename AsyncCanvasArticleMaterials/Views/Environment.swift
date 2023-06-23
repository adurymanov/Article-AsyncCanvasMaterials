import SwiftUI

struct Environment<R: View>: View {
    
    @State var value = 1.0
    
    let benchmark: Double = 50_000
    
    let render: (Double) -> R
    
    var body: some View {
        VStack {
            render(value)
            Button("Show lines") {
                value = benchmark
            }
            
            Slider(value: $value, in: 1...100_000)
        }
        .padding()
    }
    
}
