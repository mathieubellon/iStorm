//
//  Model.swift
//  iStorm
//
//  Created by Matthieu Bellon on 30/04/2022.
//

import Foundation


struct LsEvent: Decodable, Hashable, Identifiable{
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
}
