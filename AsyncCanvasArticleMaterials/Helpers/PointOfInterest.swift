import OSLog

struct PointOfInterest {
    
    let pointOfInterest = OSLog(subsystem: "com.ad.SwiftUIDraw", category: .pointsOfInterest)
    
    func began(_ name: StaticString) {
        os_signpost(.begin, log: pointOfInterest, name: name)
    }
    
    func end(_ name: StaticString) {
        os_signpost(.end, log: pointOfInterest, name: name)
    }
    
}
