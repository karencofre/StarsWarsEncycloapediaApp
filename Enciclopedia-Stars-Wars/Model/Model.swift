//
//  Model.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 09-02-22.
//

import Foundation


struct SwapiDataModel: Decodable{
    
    
    let name: String
    let height: String
    let mass: String
    let hair_color: String
    let skin_color: String
    let eye_color: String
    let gender: String 
    
}

struct SwapiResponseDataModel: Decodable{
    
    let swapis: [SwapiDataModel]
    
    enum CodingKeys: String, CodingKey{//coding key protocol represent the properties you want to decode
        case results
    }
    
    init(from decoder: Decoder)throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.swapis = try container.decode([SwapiDataModel].self , forKey: .results)
    }
}
