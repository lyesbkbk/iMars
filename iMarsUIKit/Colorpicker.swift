//
//  Colorpicker.swift
//  iMarsUIKit
//
//  Created by Laura on 19/03/2021.
//

import SwiftUI

struct Colorpicker: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
                           ColorPicker("Set the background color", selection: $Color("blueiMars"), supportsOpacity: false)
                       }
                       .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.blue)
    }
}

struct Colorpicker_Previews: PreviewProvider {
    static var previews: some View {
        Colorpicker()
    }
}
