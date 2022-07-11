
import Foundation
import SwiftUI


final class ViewModel: ObservableObject{
    
    @Published var swapis: [SwapiDataModel] = []
    @Published var swapisMovies: [SwapiMovieDataModel] = []
    
    func getSwapis(){
        let url = URL(string: "https://swapi.dev/api/people/")
        URLSession.shared.dataTask(with: url!){ data, response, error in
            
            if let _ = error{
                print("Error")
            }
            
            if let data = data, let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                
                let swapiDataModel = try! JSONDecoder().decode(SwapiResponseDataModel.self, from: data)
                
                print("swapis \(swapiDataModel)")
                
                DispatchQueue.main.async{
                    self.swapis = swapiDataModel.swapis
                }
            }
            
        }.resume()
    }
    
    //get movies
    
    func getMovies(){
        let url2 = URL(string: "https://swapi.dev/api/films/")
        URLSession.shared.dataTask(with: url2!){ data, response, error in
            
            if let _ = error{
                print("Error")
            }
            
            if let data = data, let httpResponse = response as? HTTPURLResponse,
               httpResponse.statusCode == 200 {
                
                let swapiMovieDataModel = try! JSONDecoder().decode(SwapiMovieResponseDataModel.self, from: data)
                
                print("swapis \(swapiMovieDataModel)")
                
                DispatchQueue.main.async{
                    self.swapisMovies = swapiMovieDataModel.swapisMovies
                }
            }
            
        }.resume()
    }
}
