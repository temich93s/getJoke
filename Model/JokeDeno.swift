//
//  JokeDeno.swift
//  Alias
//
//  Created by 2lup on 04.05.2022.
//

import Foundation

struct JokeDeno: Decodable {
    let id: Int
    let type: String
    let setup: String
    let punchline: String
}

//"id": 18,
//"type": "programming",
//"setup": "Why did the programmer quit his job?",
//"punchline": "Because he didn't get arrays."
