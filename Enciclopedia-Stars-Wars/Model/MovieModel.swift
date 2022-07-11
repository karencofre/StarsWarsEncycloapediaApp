//
//  MovieModel.swift
//  Enciclopedia-Stars-Wars
//
//  Created by karen cofré on 16-02-22.
//

import Foundation


struct SwapiMovieDataModel: Decodable{
    
    
    let title: String 
    let opening_crawl: String
    let release_date: String 
    
}

struct SwapiMovieResponseDataModel: Decodable{
    
    let swapisMovies: [SwapiMovieDataModel]
    
    enum CodingKeys: String, CodingKey{
        case results
    }
    
    init(from decoder: Decoder)throws{
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.swapisMovies = try container.decode([SwapiMovieDataModel].self , forKey: .results)
    }
}
