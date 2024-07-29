# SwiftUI Notes

- [SwiftUI Notes](#swiftui-notes)
- [Project Structure](#project-structure)
- [State](#state)
    - [1 Way binding](#1-way-binding)
    - [2 Way Binding](#2-way-binding)
- [Models](#models)
- [Views](#views)
- [ViewModels](#viewmodels)
- [Animation Examples](#animation-examples)
    - [Rotate Image](#rotate-image)
- [Random SwiftUI Components](#random-swiftui-components)
    - [Navigation Bar](#navigation-bar)
    - [Forms](#forms)
- [Gradients](#gradients)
    - [Linear Gradients](#linear-gradients)
    - [Linear Gradient Stops](#linear-gradient-stops)
    - [Radial Gradient](#radial-gradient)
    - [Angular Gradient](#angular-gradient)



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

### 1 Way binding

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

### 2 Way Binding

- Allows users to change variable values
- Same as 1 way binding, just need to add `$`
```
@State private var name = ""
TextField("Enter your name", text: $name)
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


# Gradients 

### Linear Gradients

- Goes in one direction, specify start and end of direction
- `LinearGradient(colors: [.red, .blue], startPoint: .top, endPoint: .bottom)`

### Linear Gradient Stops

- Add stops to specify what percentage of the gradient is what color
```
LinearGradient(stops: [
    Gradient.Stop(color: .red, location: 0.10),
    Gradient.Stop(color: .blue, location: 0.50),
    Gradient.Stop(color: .green, location: 0.90)
], startPoint: .top, endPoint: .bottom)
```

### Radial Gradient

- Circular, from center to outside
- `RadialGradient(colors: [.red, .blue], center: .center, startRadius: 125, endRadius: 400)`

### Angular Gradient

- Circular, around the center like a clock
- `AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)`




