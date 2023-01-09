//
//  GeographyData.swift
//  NEWS
//
//  Created by steven on 2023/1/7.
//
//

import Foundation

struct Scenery: Identifiable{
    let id=UUID()
    let name:String
    let image:String
}

extension Scenery{
    static let MenuList:[Scenery] = [
        Scenery(name: "地景", image: "地景"),
        Scenery(name: "建築", image: "建築"),
        Scenery(name: "人像", image: "人像")
    ]
}



struct Scenery2: Identifiable {
    let id=UUID()
    let name:String
    let fullname:String
    let image:String
}

extension Scenery2{
    static let GraphicList:[Scenery2] = [
        Scenery2(name: "野柳",fullname: "野柳", image: "野柳"),
        Scenery2(name: "玉山",fullname: "玉山", image: "玉山"),
        Scenery2(name: "日月",fullname: "日月潭", image: "日月"),
        Scenery2(name: "泥岩",fullname: "月世界泥岩惡地", image: "泥岩"),
        Scenery2(name: "清水",fullname: "清水斷崖", image: "清水"),
        Scenery2(name: "野柳２",fullname: "野柳", image: "野柳２"),
        Scenery2(name: "玉山２",fullname: "玉山", image: "玉山２"),
        Scenery2(name: "日月２",fullname: "日月潭", image: "日月２"),
        Scenery2(name: "泥岩２",fullname: "月世界泥岩惡地", image: "泥岩２"),
        Scenery2(name: "清水２",fullname: "清水斷崖", image: "清水２"),
        Scenery2(name: "野柳３",fullname: "野柳", image: "野柳３"),
        Scenery2(name: "玉山３",fullname: "玉山", image: "玉山３"),
        Scenery2(name: "日月３",fullname: "日月潭", image: "日月３"),
        Scenery2(name: "泥岩３",fullname: "月世界泥岩惡地", image: "泥岩３"),
        Scenery2(name: "清水３",fullname: "清水斷崖", image: "清水３"),
        Scenery2(name: "野柳４",fullname: "野柳", image: "野柳４"),
        Scenery2(name: "玉山４",fullname: "玉山", image: "玉山４"),
        Scenery2(name: "日月４",fullname: "日月潭", image: "日月４"),
        Scenery2(name: "泥岩４",fullname: "月世界泥岩惡地", image: "泥岩４"),
        Scenery2(name: "清水４",fullname: "清水斷崖", image: "清水４"),
        Scenery2(name: "台北101",fullname: "台北101", image: "台北101"),
        Scenery2(name: "101-1",fullname: "台北101", image: "101-1"),
        Scenery2(name: "101-2",fullname: "台北101", image: "101-2"),
        Scenery2(name: "101-3",fullname: "台北101", image: "101-3"),
        Scenery2(name: "戲劇院",fullname: "國家戲劇廳", image: "戲劇院"),
        Scenery2(name: "戲劇1",fullname: "國家戲劇廳", image: "戲劇1"),
        Scenery2(name: "戲劇2",fullname: "國家戲劇廳", image: "戲劇2"),
        Scenery2(name: "戲劇3",fullname: "國家戲劇廳", image: "戲劇3")
    ]  
}
