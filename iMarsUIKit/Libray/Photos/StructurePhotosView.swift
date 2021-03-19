//
//  StructurePhotosView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 19/03/2021.
//

import SwiftUI
import Kingfisher
import WaterfallGrid

struct StructurePhotosView: View {
    @State var photosStore: PhotoRoot?
    
    var items: [PhotoItem] {
        photosStore?.collection.items.filter{ $0.data.first?.center != "HQ" } ?? []
    }
    
    var body: some View {
        ScrollView(.vertical) {
            WaterfallGrid(items) { item in
                NavigationLink(
                    destination: DetailsPhotosView(item: item),
                    label: {
                        Group {
                            if let urlString = item.links?.first?.href,
                               let url = URL(string: urlString) {
                                KFImage(url)
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 400, height: 400)
                            }
                        }
                        
                    })
                
            }
        }.onAppear {
            if photosStore == nil {
                PhotoAPI.fetch { photos in
                    self.photosStore = photos
                }
            }
        }
        
    }
}

struct StructurePhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView()
    }
}
