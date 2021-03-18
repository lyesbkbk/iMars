//
//  TestView.swift
//  iMars
//
//  Created by Mariia Zhurina on 18/03/2021.
//

import SwiftUI
enum SidebarItems: String, CaseIterable {
    case all = "All"
    case photos = "Photos"
    case videos = "Video"
    case articles = "Articles"
    
    func systemName() -> String {
        case all return "star"
        case photos return ""
    }
    
    func view() -> AnyView {
        switch self {
        case .all:
            return AnyView(PhotoView())
        case .photos:
            return AnyView(PhotoView())
        case .videos:
            return AnyView(VideoView())
        case .articles:
            return AnyView(ArticlesView())
        }
    }
}

struct SidebarView: View {    
    var body: some View {
        NavigationView {
            List {
                ForEach(SidebarItems.allCases, id: \.self) { item in
                    NavigationLink(
                        destination: item.view(),
                        label: {
                            HStack {
                                Image(systemName: item.systemName())
                                Text(item.rawValue)
                            }
                        })
                }
            }.listStyle(SidebarListStyle())
        }.navigationViewStyle(DoubleColumnNavigationViewStyle())
    }
}


