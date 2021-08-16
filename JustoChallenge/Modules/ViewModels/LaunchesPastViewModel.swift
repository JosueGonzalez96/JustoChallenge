//
//  LaunchesPastViewModel.swift
//  JustoChallenge
//
//  Created by Alberto Josue Gonzalez Juarez on 16/08/21.
//

import Foundation

class LaunchesPastViewModel {
    private var arrLaunchFilter = [LaunchPastQuery.Data.LaunchesPast?]()
    private var arrLaunch = [LaunchPastQuery.Data.LaunchesPast?]()
    
    var successFetch: (() -> Void)?
    var failFetch: ((_ message: String) -> Void)?

    func fetch() {
        let query = LaunchPastQuery()
        Network.shared.apollo?.fetch(query: query) {[weak self] result in
            switch result {
            case .success(let respose):
                if let arrResponse = respose.data?.launchesPast{
                    self?.arrLaunchFilter = arrResponse
                    self?.arrLaunch = arrResponse
                    self?.successFetch?()
                } else if let errors = respose.errors {
                    self?.failFetch?(errors.debugDescription)
                }
                
            case .failure(let err):
                self?.failFetch?(err.localizedDescription)
            }
        }
    }
    func numberOfRow() -> Int {
        return arrLaunchFilter.count
    }
    func getLaunch(indexPath: IndexPath) -> LaunchPastQuery.Data.LaunchesPast? {
        return arrLaunchFilter[indexPath.row]
    }
    func search(name: String) {
        self.arrLaunchFilter = arrLaunch
        let filtered = arrLaunchFilter.filter {
            guard let missionName = $0?.missionName else { return false}
            return missionName.lowercased().contains(name.lowercased())
        }
        arrLaunchFilter = filtered
        self.successFetch?()
    }
}
