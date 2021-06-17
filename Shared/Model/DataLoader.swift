//
//  DataLoader.swift
//  HelloSwiftUI
//
//  Created by sama 刘 on 2021/6/16.
//

import Foundation

func loader<T: Decodable>(from fileName: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: fileName, withExtension: nil) else {
        fatalError("could not find \(fileName) in main bundle")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(fileName) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(fileName) as \(T.self):\n\(error)")
    }
}

let landMarks: [LandMark] = loader(from: "landmarkData.json")
