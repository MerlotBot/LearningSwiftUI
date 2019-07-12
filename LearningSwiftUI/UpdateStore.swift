//
//  UpdateStore.swift
//  DesignCode
//
//  Created by Antonakakis Nikolaos on 12.07.19.
//  Copyright © 2019 Antonakakis Nikolaos. All rights reserved.
//

import SwiftUI
import Combine

class UpdateStore : BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var updates: [Update] {
        didSet {
            didChange.send()
        }
    }
    
    init(updates: [Update] = []) {
        self.updates = updates
    }
}

