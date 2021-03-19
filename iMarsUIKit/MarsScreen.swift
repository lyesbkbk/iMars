//
//  MarsScreen.swift
//  iMarsUIKit
//
//  Created by Kevin MASLOWSKI on 18/03/2021.
//

import Foundation
import SwiftUI
import SceneKit


struct MarsScreen: View {
    
    // Init 3D Mars with a space background
    let scnScene: SCNScene? = {
        if let mars3D = SCNScene(named: "Mars_3D.usdz") {
            mars3D.background.contents = UIImage(named: "MainScreenBackground")
            return mars3D
        }
        return nil
    }()
    
    // If true : Change icon button
    @State var unseeMode: Bool = false
    
    // If false : hide informations
    @State var showInformation: Bool = true
    
    var body: some View {
        ZStack {
            SceneView(scene: scnScene, options: [.autoenablesDefaultLighting, .allowsCameraControl], preferredFramesPerSecond: 60)
            HStack {
                Spacer()
                VStack {
                    VStack {
                        Text("Mars\n")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color(UIColor(named: "rediMars")!))
                            + Text("Températures °C\n*insert data*\nPression PA\n*insert data*\nGravité m/s²\n*insert data*\nO\nObjets martiens\n")
                    }
                    .padding()
                    .multilineTextAlignment(.trailing)
                    .background(Color.black .opacity(0.5))
                    .cornerRadius(10)
                    VStack {
                        Text("Terre\n")
                            .bold()
                            .font(.title2)
                            .foregroundColor(Color(UIColor(named: "blueiMars")!))
                            + Text("Températures °C\n*insert data*\nPression PA\n*insert data*\nGravité m/s²\n*insert data*\nO\nObjets terrestres\n")
                    }
                    .padding()
                    .multilineTextAlignment(.trailing)
                    .background(Color.black .opacity(0.5))
                    .cornerRadius(10)
                }
                .offset(x: -20)
            }
        }
        .navigationBarHidden(/*@START_MENU_TOKEN@*/false/*@END_MENU_TOKEN@*/)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing: Button(action: {
            self.unseeMode.toggle()
            print("coucou")
        }, label: {
            Image(systemName: self.unseeMode == false ? "eye" : "eye.slash")
                .foregroundColor(Color(UIColor(named: "rediMars")!))
        }))
    }
}



struct MarsScreen_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            MarsScreen()
        }
    }
}
