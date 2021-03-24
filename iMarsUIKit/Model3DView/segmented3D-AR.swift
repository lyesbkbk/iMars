//
//  segmented3D-AR.swift
//  iMarsUIKit
//
//  Created by Laura on 24/03/2021.
//

import SwiftUI

struct segmented3D_AR: View {
    
        @State private var favoriteColor = 0

            var body: some View {
                VStack(alignment: .leading) {
                    Picker(selection: $favoriteColor, label: Text("")) {
                        Text("3D").tag(0)
                        Text("").tag(1)
                        
                    }
                    .pickerStyle(SegmentedPickerStyle())

                    Spacer()
                }
                .frame(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                
                
            }
        }

struct segmented3D_AR_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            segmented3D_AR()
                .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        }
    }
}
