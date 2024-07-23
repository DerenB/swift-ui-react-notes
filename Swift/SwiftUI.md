# SwiftUI Notes

- [SwiftUI Notes](#swiftui-notes)
- [Project Structure](#project-structure)
- [Models](#models)
- [Views](#views)

# Project Structure

- [Apple Source](https://developer.apple.com/tutorials/swiftui-concepts/exploring-the-structure-of-a-swiftui-app)
- Main File: `MyApp.swift`
  - Entry point of the app: `@main`
- Basic Example:
```
import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

# Models

- Created with a Swift file
- Uses a `struct` to declare variables
- Example:
```
struct Location {
    let name: String
    let cityName: String
    let coordinates: CLLocationCoordinate2D
    let description: String
    let imageNames: [String]
    let link: String
}
```

# Views

- Created with a "SwiftUI View" file