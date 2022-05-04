//
//  GetJoke.swift
//  Alias
//
//  Created by 2lup on 04.05.2022.
//

import Foundation

private var joke = "123"
    
    // функция которая возвращает шутку с сайта rzhunemogu.ru
    func getJoke() -> String {
        
        if let url = URL(string: "https://joke.deno.dev") {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    print(error?.localizedDescription)
                    return
                }
                if let safeData = data {
                    joke = parseJSON(data: safeData)
                    //print(joke)
                }
            }
            task.resume()
        }
        return joke
    }

//парсинг данных пришедших от с сайта joke.deno.dev
private func parseJSON(data: Data) -> String {
    let decoder = JSONDecoder()
    do {
        let decodedData = try decoder.decode(JokeDeno.self, from: data)
        return decodedData.setup + "\n----------\n" + decodedData.punchline
    } catch {
        print(error.localizedDescription)
        return ""
    }
}

