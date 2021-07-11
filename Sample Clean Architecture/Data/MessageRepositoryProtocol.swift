//
//  MessageRepositoryProtocol.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

protocol MessageRepositoryProtocol {
    func getWelcomeMessage(name:String) -> MessageEntity
}
