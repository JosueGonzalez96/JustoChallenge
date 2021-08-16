//
//  Network.swift
//  JustoChallenge
//
//  Created by Alberto Josue Gonzalez Juarez on 11/08/21.
//

import Foundation
import Apollo

class Network {
  static let shared = Network()
    lazy var apollo: ApolloClient? = {
        let stringURL: String = "https://api.spacex.land/graphql/"
        guard let url = URL(string: stringURL) else { return nil }
        return ApolloClient(url: url)
    }()
}
