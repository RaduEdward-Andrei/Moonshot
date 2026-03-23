# Moonshot

A SwiftUI-based space exploration application featuring Apollo mission browsing, astronaut details, and dynamic layout switching between grid and list views.

* * *

## Features

### Mission Browsing

- Browse Apollo missions in a grid layout
- Switch to a list layout using a toolbar toggle  
- View each mission’s name, patch image, and launch date
- Navigate from the mission list to a dedicated mission details screen

### Mission Details

- Explore mission highlights and descriptive information
- Display mission imagery in a dedicated detail view
- Present launch dates using formatted Swift date output

### Crew Exploration

- Browse crew members assigned to each mission
- Navigate from a mission to individual astronaut profiles
- View astronaut images, names, and descriptions

### UI and Composition

- Built with reusable SwiftUI views
- Custom dark theme using app-specific color extensions
- Horizontal and vertical scrolling layouts for better content presentation
- Clear separation between layout views (Grid vs List) 

* * *

## Technologies

- **Swift** — core language for models and logic  
- **SwiftUI** — declarative UI framework  
- **Codable** — type-safe JSON decoding  
- **NavigationStack** — structured navigation flow  
- **LazyVGrid & List** — multiple layout strategies  
- **Local JSON data** — bundled data source  

* * *

## Learning Context

Built as part of **Hacking with Swift – SwiftUI (Project 8)**  
https://www.hackingwithswift.com/books/ios-swiftui

Extended beyond the tutorial by:

- Adding a toolbar toggle to switch between grid and list layouts  
- Extracting layout views into separate reusable components 
