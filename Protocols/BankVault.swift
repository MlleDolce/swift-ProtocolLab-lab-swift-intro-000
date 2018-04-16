//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0
    
    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
    
}

protocol ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool
}

extension BankVault: ProvideAccess {
    
    func allowEntryWithPassword(password: [Int]) -> Bool {
        guard !password.isEmpty else { return false }
        guard password.count <= 10 else { return false }
        
        let pwLength = password.count
        
        var index = 0
        while index <= pwLength {
            guard password[index] % 2 == 0 else { return false }
            index += 2
        }
        return true
    }
}





