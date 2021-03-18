//
//  Model3DRaw.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI

struct Model3DRaw: View {
    var body: some View {
        
        ZStack{
        Image("Curiosity")
            .resizable()
            .aspectRatio(contentMode: .fit)
            VStack {
                Text("Curiosity")
                    .font(.system(size: 150))
                    
                    .fontWeight(.semibold)
                Spacer()
            }.padding(.top)
        }
        }
    }


struct Model3DRaw_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DRaw()
        }
        
    }
}
