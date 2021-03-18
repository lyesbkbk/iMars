//
//  Model3DRaw.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI

struct Model3DRaw: View {
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .top)) {
            
            Image("Curiosity")
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(maxWidth : 200)
            Text("Curiosity")
                .font(.title2)
                .padding()
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
