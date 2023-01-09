//
//  GalleryView.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//

import SwiftUI
import UIKit
import SafariServices


struct GalleryView: View {
    @State private var ShowSheet2 = false
    @State private var ShowSheet = false
    @State private var bgColor = Color.black
    @State private var dog: CGFloat = 0
    @State private var ShowSheet3 = false
    
    
    var body: some View {
        ZStack{
            VStack{
               
                Text("GALLERY")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                ScrollView(.vertical) {
                    ForEach(Scenery.MenuList) { item in
                        /*let index1 = Scenery.MenuList.firstIndex{
                            $0.image.hasPrefix("建")
                        }*/
                        let index = Scenery.MenuList.firstIndex{
                            $0.image.hasPrefix("地")
                        }
                        
                        if index == 0{
                        Button(action: {
                            ShowSheet = true
                        }){
                            GeographyView(input: item)
                          }
                        .sheet(isPresented: $ShowSheet, content: {
                               NavigationView{
                                  List{
                                    ForEach(Scenery2.GraphicList){ item in
                                       NavigationLink(
                                        destination: PageView(input:item),
                                        label: {
                                            GraphicView(input: item)
                                        }
                                       )
                                    }
                                 }
                              }
                         
                       })
                        
                    }
                  }
                }
            }
        }
    }
}

struct PageView: View{
    let input: Scenery2
    var body: some View{
        VStack{
            Text("Stay hungry. Stay foolish.")
                .frame(width: 300, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Image("peter jobs")
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            Image("steven1")
                .resizable()
                .scaledToFill()
                .frame(width: 500, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
        }
    }
}




struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}


