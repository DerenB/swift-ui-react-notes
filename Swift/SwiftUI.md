# SwiftUI Notes

- [SwiftUI Notes](#swiftui-notes)
- [Project Structure](#project-structure)
- [State](#state)
- [Models](#models)
- [Views](#views)
- [ViewModels](#viewmodels)
- [Animation Examples](#animation-examples)
    - [Rotate Image](#rotate-image)
- [Random SwiftUI Components](#random-swiftui-components)
    - [Navigation Bar](#navigation-bar)
    - [Forms](#forms)

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

# State

- Views are created with `struct`
- Structs rae immutable, so variables can't be changed within the struct
- Solution: use `@State`
```
struct ContentView: View {
    @State var tapCount = 0

    var body: some View {
        Button("Tap Count: \(tapCount)") {
            self.tapCount += 1
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
- Views must contain a `body` property that returns `some View`

# ViewModels

- Created with a Swift file

# Animation Examples

### Rotate Image

- Rotates an image such as an icon
- Ex: rotate arrow for opening/closing a dropdown menu
```
.overlay(alignment: .leading) {
    Image(systemName: "arrow.down")
        .font(.headline)
        .foregroundColor(.primary)
        .padding()
        .rotationEffect(Angle(degrees: vm.showLocationsList ? 180 : 0))
}
```

# Random SwiftUI Components

### Navigation Bar

- The top screen navigation
- Put around view content
```
NavigationStack {
    /// Content
    .navigationTitle("")
}
```

### Forms

- Created with `Form` 
- Can divide items with `Section`
```
Form {
    Section {
        /// content
    }
    Section {
        /// content
    }
}
```