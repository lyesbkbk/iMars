//
//  Model3D.swift
//  iMars
//
//  Created by Lyes BOUKBOUKA on 18/03/2021.
//

import Foundation

struct Model3D : Identifiable{
    
let id = UUID()
let name : String
let fileName : String
let desc : String
let type : String

    
  

}

extension Model3D {
   static let model = [
        Model3D(name: "Curiosity", fileName: "Mars.usdz", desc: "Description de curiosity", type: "Model3D"),
    Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D"),
    Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D"),
    Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D"),
    Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D"),
    Model3D(name: "Curiosity", fileName: "Curiosity.usdz", desc: "Description de curiosity", type: "Model3D")
    ]
}
