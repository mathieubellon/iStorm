//
//  ModelData.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import Foundation

var lsEventsArray: [LsEvent] = load("lsEventsData.json")

func load<T: Decodable>(_ filename: String) -> T{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Couldn't find \(filename) in bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    }catch{
        fatalError("couldn't load data from \(filename): error \(error)")
    }
    
    do{
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }catch{
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
