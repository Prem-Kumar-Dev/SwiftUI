import Foundation
import Playgrounds

#Playground {


//    var jsonFilePathURL = Bundle.main.url(forResource: "b Movies", withExtension: "json")
//    
//    var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
//    let jsonDecoder = JSONDecoder()
//    var myMovies = try
//    jsonDecoder.decode([Movie].self, from: jsonFileContentData)
//    
//    for movie in myMovies{
//        print(movie)
//    }
    
//    //MARK: - C file
//    
//    struct Movie: Codable{
//        var title: String
//        var director: String
//        var rating: Double
//    }
//    
//    struct MovieResponse: Codable{
//        var movies: [Movie]
//    }
//    
//    var jsonFilePathURL = Bundle.main.url(forResource: "c Movies", withExtension: "json")
//    
//    var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
//    let jsonDecoder = JSONDecoder()
//    var myMovieResponse = try
//    jsonDecoder.decode(MovieResponse.self, from: jsonFileContentData)
//
//    
//    for movie in myMovieResponse.movies{
//        print(movie)
//    }
//    //MARK: - D file
//    
//    struct Movie: Codable{
//        var title: String
//        var details: Details
//    }
//    
//    struct MovieResponse: Codable{
//        var movies: [Movie]
//    }
//    struct Details: Codable{
//        var director: String
//        var rating: Double
//    }
//    
//    var jsonFilePathURL = Bundle.main.url(forResource: "d Movies", withExtension: "json")
//    
//    var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
//    let jsonDecoder = JSONDecoder()
//    var myMovieResponse = try
//    jsonDecoder.decode(MovieResponse.self, from: jsonFileContentData)
//
//    
//    for movie in myMovieResponse.movies{
//        print(movie.details.director)
//    }
    
    //MARK: - E file
    
    struct Movie: Codable{
        var title: String
        var director: String
        var rating: Double
        
        enum CodingKeys: String, CodingKey{
            case title
            case director = "movie_director"
            case rating
        }
        init(from decoder: any Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.title = try container.decode(String.self, forKey: .title)
            self.director = try container.decode(String.self, forKey: .director)
            var ratingString = try container.decode(String.self, forKey: .rating)
            
            self.rating = Double(ratingString) ?? 0.0
        }
    }
    
    

    
    var jsonFilePathURL = Bundle.main.url(forResource: "f Movies", withExtension: "json")
    
    var jsonFileContentData = try! Data(contentsOf: jsonFilePathURL!)
    let jsonDecoder = JSONDecoder()
    var myMovieResponse = try
    jsonDecoder.decode(Movie.self, from: jsonFileContentData)

    
    print(myMovieResponse)
}
