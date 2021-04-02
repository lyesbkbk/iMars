//
//  SwiftUIView.swift
//  iMarsUIKit
//
//  Created by Lyes BOUKBOUKA on 02/04/2021.
//

import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        ZStack {
            Image("stars")
            VStack{
            HStack{
                VStack{
                    HStack{
                        VStack{
                            Text("Terre")
                            Text("Temperature \n Pression \n Gravite")
                        }
                        VStack{
                            Text("Mars")
                            Text("Temperature \n Pression \n Gravite")
                        }
                        
                    }
                    Spacer()
                    Image("picofd")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 275, height: 220)
                    
                }.frame(width: 275.0, height: 400)
                .background(Rectangle()
                                .foregroundColor(.red)
                                .opacity(0.5))
                VStack{
                  
                    Text("Last article")
                    Spacer()
                    
                }.frame(width: 275.0, height: 400)
                .background(Rectangle()
                                .foregroundColor(.red)
                                .opacity(0.5))
                VStack{
                    HStack{
                        VStack{
                            Text("Terre")
                            Text("Temperature \n Pression \n Gravite")
                        }
                        VStack{
                            Text("Mars")
                            Text("Temperature \n Pression \n Gravite")
                        }
                        
                    }
                    Image("picofd")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 225.0, height: 190.0)
                    
                }.frame(width: 275.0, height: 400)
                .background(Rectangle()
                                .foregroundColor(.red)
                                .opacity(0.5))
            }
                HStack(spacing: 0){
                VStack{
                  
                    Text("Last article")
                    Spacer()
                    
                }.frame(width: 375, height: 280)
                .background(Rectangle()
                                .foregroundColor(.red)
                                .opacity(0.5))
               Image("picvideo")
                .resizable()
                .scaledToFit()
                .frame( height: 280)
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        Landscape {
            SwiftUIView()
        }
    }
}
