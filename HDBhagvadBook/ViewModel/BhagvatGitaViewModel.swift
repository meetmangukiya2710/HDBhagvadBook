//
//  BhagvatGitaViewModel.swift
//  HDBhagvadBook
//
//  Created by R95 on 18/09/24.
//

import Foundation

class BhagvatGitaViewModel : NSObject {
    
    var bhagvatGitaApiClass: BhagvatGitaCallingFunc = BhagvatGitaCallingFunc()
    
    func viewModelFunc(_ load: @escaping(_ value: [BhagvatGitaAPI]) -> Void) {
        bhagvatGitaApiClass.apiCallingFunc() { i in
            load(i)
        }
    }
}
