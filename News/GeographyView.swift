//
//  GeographyView.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//

import SwiftUI


struct GeographyView: View {
    let input:Scenery
    var body: some View {
        ZStack {
            Image(input.image)
                .resizable()
                .scaledToFit()
                .frame(width: 600, height: 380, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            Text(input.name)
                .font(.system(size: 60, weight: .light))
                .foregroundColor(Color.white)
                .frame(width: 150, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x: 150, y: 150)
        }
        /*.overlay(NumberImage(number: input.rank)
            , alignment: .topLeading)*/
    }
}

struct GraphicView: View {
    
    let input:Scenery2
    var body: some View{
        
        HStack{
            Image(input.image)
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            Text(input.fullname)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
        }
    }
}

struct EcoView: View {
    
    let input:Scenery2
    var body: some View{
        
        HStack{
            Image(input.image)
                .resizable()
                .scaledToFill()
                .frame(width: 260, height: 190, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipped()
            Text(input.fullname)
                .font(/*@START_MENU_TOKEN@*/.headline/*@END_MENU_TOKEN@*/)
                .frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            //count = (input.num)
        }
    }
}

struct GeographyView_Previews: PreviewProvider {
    static var previews: some View {
        GeographyView(input:Scenery.MenuList[0])
        GraphicView(input:Scenery2.GraphicList[0])
    }
}

