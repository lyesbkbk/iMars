//
//  Model3DView.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI

struct Model3DView: View {
    var body: some View {
        VStack{
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
//            Spacer()
            HStack{
                
            }
        }
    }
}

struct Model3DView_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DView()
        }
    }
}
