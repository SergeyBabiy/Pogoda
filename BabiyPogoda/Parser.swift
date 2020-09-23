//
//  Parser.swift
//  BabiyPogoda
//
//  Created by Сергей Бабий on 01.09.2020.
//  Copyright © 2020 Сергей Бабий. All rights reserved.
//

import Foundation
class Parser {
    
    func parsing(lat: Double, lon: Double, callback: @escaping (Jcon) -> ()) {
        let urlString = "https://api.weatherbit.io/v2.0/forecast/daily?&lat=\(lat)&lon=\(lon)&key=24a0409b730e4d0cacdea6e53e083495"
        guard let url = URL(string: urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, respons, error) in
            DispatchQueue.main.async {
                guard let data = data else { return }
                do {
                    let json = try JSONDecoder().decode(Jcon.self, from: data)
                    callback(json)
                }catch let error {
                    print(error)
                }
            }
        }.resume()
    }
}
