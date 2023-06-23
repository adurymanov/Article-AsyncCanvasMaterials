import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            Environment(render: RenderCanvas.init).tabItem {
                Label("Canvas", image: "")
            }
            Environment(render: RenderShapes.init).tabItem {
                Label("Shapes", image: "")
            }
            Environment(render: RenderAsyncCanvas.init).tabItem {
                Label("AsyncCanvas", image: "")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
