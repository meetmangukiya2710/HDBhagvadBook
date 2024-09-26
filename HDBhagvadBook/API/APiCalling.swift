//
//  APiCalling.swift
//  HDBhagvadBook
//
//  Created by R95 on 18/09/24.
//

import UIKit

struct BhagvatGitaAPI: Codable {
    let id: Int?
    let name, slug, name_transliterated, name_translated: String?
    let verses_count, chapter_number: Int?
    let name_meaning, chapter_summary, chapter_summary_hindi: String?
}


class BhagvatGitaCallingFunc {
    
    let headers = [
        "x-rapidapi-key": "1bb7c8d995msh356d5003cd3bb09p17e18ajsne9a333e60143",
        "x-rapidapi-host": "bhagavad-gita3.p.rapidapi.com"
    ]
    
    func apiCallingFunc(_ load: @escaping(_ value: [BhagvatGitaAPI]) -> Void) {
        let link = "https://bhagavad-gita3.p.rapidapi.com/v2/chapters/?limit=18"
        var urlRequset = URLRequest(url: URL(string: link)!)
        urlRequset.httpMethod = "GET"
        urlRequset.allHTTPHeaderFields = headers
        
        URLSession.shared.dataTask(with: urlRequset) { data,respo,error in
            do {
                if data != nil {
                    let apiData = try JSONDecoder().decode([BhagvatGitaAPI].self, from: data!)
                    load(apiData)
                }
                else {
                    print("Error \(error?.localizedDescription)")
                }
            }
            catch {
                print(error.localizedDescription)
            }
        }.resume()
    }
}
