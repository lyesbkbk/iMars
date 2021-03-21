//
//  Sidebar.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 21/03/2021.
//

import SwiftUI

enum Menu: Hashable {
    case mars, libAll, photos, videos, articles, dAll, dMars, rovers, sondes, saved
}

struct SidebarHeader: View {
    let title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.black)
            .fontWeight(.bold)
    }
}

struct SidebarNavigationLink: View {
    let destination: AnyView
    let tag: Menu
    let selection: Binding<Menu?>
    let imageLabel: String
    let textLabel: String
    
    var body: some View {
        NavigationLink(
            destination: destination,
            tag: Menu.mars,
            selection: selection,
            label: {
                Image(systemName: "\(imageLabel)")
                Text("\(textLabel)")
                
            }
        )
    }
}



struct Sidebar: View {
    
    @State private var selection: Menu? = Menu.mars
    
    var body: some View {
        List {
//            Section(header: SidebarHeader(title: "Mars")) {
//                NavigationLink(
//                    destination: MarsScreen(),
//                    tag: Menu.mars,
//                    selection: $selection,
//                    label: {
//                        Image(systemName: "map")
//                        Text("Mars")
//
//                    }
//                )
//                .foregroundColor(self.selection == Menu.mars ? Color.white : Color.black)
//                .background(self.selection == Menu.mars ? Rectangle().fill(Color(UIColor(named: "sideItemSelected")!)) : Rectangle().fill(Color.clear))
//            }
            
            SidebarNavigationLink(destination: MarsScreen(), tag: Menu.mars, selection: self.selection, imageLabel: "map", textLabel: "Mars")
            
            Section(header: SidebarHeader(title: "Library")) {
                NavigationLink(
                    destination: Text("Tag 2"),
                    tag: Menu.libAll,
                    selection: $selection,
                    label: {
                        Image(systemName: "server.rack")
                        Text("All")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 3"),
                    tag: Menu.photos,
                    selection: $selection,
                    label: {
                        Image(systemName: "photo.fill.on.rectangle.fill")
                        Text("Photos")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 4"),
                    tag: Menu.videos,
                    selection: $selection,
                    label: {
                        Image(systemName: "video.fill")
                        Text("Videos")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 5"),
                    tag: Menu.articles,
                    selection: $selection,
                    label: {
                        Image(systemName: "newspaper.fill")
                        Text("Articles")
                    }
                )
            }
            
            
            Section(header: SidebarHeader(title: "3D Models")) {
                NavigationLink(
                    destination: Text("Tag 6"),
                    tag: Menu.dAll,
                    selection: $selection,
                    label: {
                        Image(systemName: "server.rack")
                        Text("All")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 7"),
                    tag: Menu.dMars,
                    selection: $selection,
                    label: {
                        Image(systemName: "photo.fill.on.rectangle.fill")
                        Text("Mars")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 8"),
                    tag: Menu.rovers,
                    selection: $selection,
                    label: {
                        Image(systemName: "video.fill")
                        Text("Rovers")
                    }
                )
                NavigationLink(
                    destination: Text("Tag 9"),
                    tag: Menu.sondes,
                    selection: $selection,
                    label: {
                        Image(systemName: "newspaper.fill")
                        Text("Sondes")
                    }
                )
            }
            
            Section(header: SidebarHeader(title: "Saved")) {
                NavigationLink(
                    destination: Text("Tag 10"),
                    tag: Menu.saved,
                    selection: $selection,
                    label: {
                        Image(systemName: "square.and.arrow.down")
                        Text("Saved")
                    }
                )
            }
        }
        .listStyle(SidebarListStyle())
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct Sidebar_Previews: PreviewProvider {
    static var previews: some View {
        Sidebar()
    }
}
