//
//  DetailsPhotosView.swift
//  iMarsUIKit
//
//  Created by Mariia Zhurina on 19/03/2021.
//

import SwiftUI
import Kingfisher


struct DetailsPhotosView: View {
    let item: PhotoItem
    
    var body: some View {
        ScrollView {
            VStack {
                if let urlString = item.links?.first?.href,
                   let url = URL(string: urlString) {
                    KFImage(url)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(maxWidth: 500)
                        .cornerRadius(5.0)
                }
                Text(item.data.first?.title ?? "No title")
                    .font(.title)
                Text(item.data.first?.description ?? "No description")
                
            }
        }
    }
}

struct DetailsPhotosView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsPhotosView(item: .init(links: nil, data: []))
    }
}
