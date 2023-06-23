import SwiftUI

extension Color {
    
    static var random: Color {
        Color(cgColor: .random)
    }
    
}

extension CGColor {
    
    static var random: CGColor {
        CGColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: .random(in: 0.7...1)
        )
    }
    
}

extension CGPoint {
    
    static var random: CGPoint {
        CGPoint(
            x: CGFloat.random(in: 0...350),
            y: CGFloat.random(in: 0...350)
        )
    }
    
}
