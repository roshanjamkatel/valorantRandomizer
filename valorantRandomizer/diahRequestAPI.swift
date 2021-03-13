//
//  diahRequestAPI.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/13/21.
//

import Foundation

class savedLink{
    static let sharedInstance = savedLink()
    var endpoint = "https://api.diah.info/valorant/roulette.php?id=69&format=json"
    
    func getEndpoint() -> String{
        return endpoint
    }
}

struct stratData: Codable {
    var cid: String
    var description: String
    var scoring: String
    var difficulty: String
    var side: String
}

final class Repository {
    
    private let apiClient: APIClient!
    
    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }
    
    func getStrats(_ completion: @escaping ((Result<stratData>) -> Void)) {
        let resource = Resource(url: URL(string: savedLink.sharedInstance.getEndpoint())!)
        apiClient.load(resource) { (result) in
            switch result {
            case .success(let data):
                do {
                    let items = try JSONDecoder().decode(stratData.self, from: data)
                    completion(.success(items))
                } catch {
                    completion(.failure(error))
                }
            
            case .failure(let error):
                completion(.failure(error))
            }
        }
    }
    
}
