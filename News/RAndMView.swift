//
//  RAndMView.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//

import SwiftUI
import SwiftyJSON
import SDWebImageSwiftUI
import WebKit

struct RAndMView: View {
    
    @ObservedObject var ricklist = getCharacterData()
    
    var body: some View {
                       
            List(ricklist.datas){ c in
                HStack {
                    
                    if c.image != ""{
                        
                        WebImage(url: URL(string: c.image)!, options: .highPriority, context: nil)
                        .resizable()
                        .frame(width: 100, height: 100)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                        .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth: 4))
                    }
                    
                    //Spacer()
                    
    //                VStack (alignment: .leading, spacing: 30) {
    //
    //                    Text(c.name)
    //                    .fontWeight(.heavy)
    //                    Text(c.status)
    //                    .fontWeight(.heavy)
    //                    Text(c.species)
    //                    .fontWeight(.heavy)
    //                    Text(c.gender)
    //                    .fontWeight(.heavy)
    //                }
    //                .background(Color.yellow)
                    Text(c.name)
                        .font(.title)
                        .fontWeight(.heavy)
                    
                }
            }
            .frame(width: 450, height: 900, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }

}

struct RAndMView_Previews: PreviewProvider {
    static var previews: some View {
        RAndMView()
    }
}

struct Character: Identifiable {
    let id: String
    let name: String
    let status: String
    let species: String
    let gender: String
    let image: String
}

class getCharacterData : ObservableObject {
    
    @Published var datas = [Character]()
    
    init() {
        
        let source = "https://rickandmortyapi.com/api/character/"
        
        let url = URL(string: source)!
        
        let session = URLSession(configuration: .default)
        
        session.dataTask(with: url) { (data, _, err) in
            
            if err != nil {
                print((err?.localizedDescription)!)
                return
            }
            
            let json = try! JSON(data: data!)
            
            for c in json["results"]{
                
                let id = c.1["id"].stringValue
                let name = c.1["name"].stringValue
                let status = c.1["status"].stringValue
                let species = c.1["species"].stringValue
                let gender = c.1["gender"].stringValue
                let image = c.1["image"].stringValue
                
                DispatchQueue.main.async {
                    self.datas.append(Character(id: id, name: name, status: status, species: species, gender: gender, image: image))
                }
            }
        }.resume()
    }
}


struct RickwebView : UIViewRepresentable {
    
    var url : String
    func makeUIView(context: UIViewRepresentableContext<RickwebView>) -> WKWebView {
        let view = WKWebView()
        view.load(URLRequest(url: URL(string: url)!))
        return view
    }
    
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<RickwebView>) {
        
    }
}
