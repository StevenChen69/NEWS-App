//
//  SelectNewsView.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit
import SafariServices

struct SelectNewsView: View {
    
    //@State private var rotateDegree: Double = 0
    @State var showTWSafari = false
    @State var TWNewsUrlString = "https://www.youtube.com/watch?v=AVONqDufr30"
    @State var showUSSafari = false
    @State var USNewsUrlString = "https://www.youtube.com/watch?v=w_Ma8oQLmSM"
    
    var body: some View {
        
                NavigationView {
                    ZStack{
                        Text("1.6.9")
                            .foregroundColor(Color.white)
                            .frame(width: 500, height: 900, alignment: .top)
                            .background(LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue,Color.purple]), startPoint: .top, endPoint: .bottom))
                            .offset(x: 0, y: -60)
     
                      VStack {
                        
                        /*Button(action: {
                                    self.rotateDegree = 360
                                 }){*/
                            Image("Newslogo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 300, height: 300, alignment: .center)
                            /*.rotationEffect(.degrees(rotateDegree))
                                     .animation(
                                      Animation.linear(duration: 3)
                                      .repeatCount(1, autoreverses: false))
                                 }
                                 .buttonStyle(PlainButtonStyle())*/
                        
                        Text("NEWS")
                            .fontWeight(.bold)
                            .frame(width:100, height:125, alignment: .top)
                            .font(/*@START_MENU_TOKEN@*/.largeTitle/*@END_MENU_TOKEN@*/)
                            .offset(x: 0, y: -50)
                        
                        HStack {
                            
                            VStack{
                                Text("文字新聞")
                                    .padding()

                                NavigationLink(destination: ContentView()) {
                                    Text("國內新聞")
                                        .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .padding(.bottom)
                                }
                                
                                
                                
                                NavigationLink(destination: USANewsView()) {
                                        Text("國際新聞")
                                            .font(.title)
                                            .fontWeight(.heavy)
                                            .foregroundColor(Color.white)
                                            .padding(.bottom, 10.0)
                                }
                            }.frame(width: 140, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                            
                            
                            Spacer()
                            
                            
                            
                            VStack{
                                Text("新聞直播")
                                    .padding()
                                
                                Button(action: {
                                    self.TWNewsUrlString = "https://www.youtube.com/watch?v=AVONqDufr30"
                                    self.showTWSafari = true
                                }){
                                    Text("TVBS News")
                                    .font(.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color.white)
                                        .padding(.bottom)
                                  }
                                  .sheet(isPresented: $showTWSafari) {
                                     TWSafariView(TWurl:URL(string: self.TWNewsUrlString)!)
                                  }
                                
                                
                                Button(action: {
                                        self.USNewsUrlString = "https://www.youtube.com/watch?v=w_Ma8oQLmSM"
                                        self.showUSSafari = true
                                 }){
                                    Text("ABC News")
                                    .font(.title)
                                        .fontWeight(.heavy)
                                        .foregroundColor(Color.white)
                                        .padding(.bottom, 11.0)
                                }.sheet(isPresented: $showUSSafari) {
                                    USSafariView(USurl:URL(string: self.USNewsUrlString)!)
                                    }
                                
                            }
                            .frame(width: 200, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            
                        }
                        
                    }
                    .frame(width: 300, height: 200)
                      .navigationBarTitle("Welcome Back")
                }
        }
    }
}

struct SelectNewsView_Previews: PreviewProvider {
    static var previews: some View {
        SelectNewsView()
    }
}


struct TWSafariView: UIViewControllerRepresentable {

    let TWurl: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<TWSafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: TWurl)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<TWSafariView>) {

    }

}

struct USSafariView: UIViewControllerRepresentable {

    let USurl: URL

    func makeUIViewController(context: UIViewControllerRepresentableContext<USSafariView>) -> SFSafariViewController {
        return SFSafariViewController(url: USurl)
    }

    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<USSafariView>) {

    }

}

