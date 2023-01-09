//
//  ChangeView.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//

import SwiftUI

struct ChangeView: View {
    var body: some View {
            TabView {
                SelectNewsView()
                    .tabItem {
                        Image(systemName: "tv")
                        Text("NEWS")
                }
                GalleryView()
                    .tabItem {
                        Image(systemName: "photo")
                        Text("GALLERY")
                }
                RAndMView()
                    .tabItem {
                        Image(systemName: "flame")
                        Text("RICK & MORTY")
                }
            }
        }
    }

struct ChangeView_Previews: PreviewProvider {
    static var previews: some View {
        ChangeView()
    }
}
