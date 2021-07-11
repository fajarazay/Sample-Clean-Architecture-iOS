//
//  MessageDataSourceProtocol.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

protocol MessageDataSourceProtocol {
    func getMessageFromSource(name: String) -> MessageEntity
}
