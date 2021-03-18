//
//  Model3DView.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import SwiftUI
import SceneKit

struct Model3DView: View {
    let item : Model3D
   let scnScene = SCNScene(named: "Mars.usdz")
    var body: some View {
        VStack{
            ZStack{
                SceneView(scene: scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height/1.3)
                
            }
            ScrollView(.horizontal){
                HStack{
                    ForEach(Model3D.model){
                        item in
                        Model3DRaw(item: item)
                    }
                }
            }.frame(maxHeight: 170)
            //            Spacer()
            
        }
        
    }
}


struct Model3DView_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            Model3DView(item: Model3D.model[0])
        }
    }
}
