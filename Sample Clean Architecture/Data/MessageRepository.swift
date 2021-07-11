//
//  MessageRepository.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

class MessageRepository: MessageRepositoryProtocol {
    
    private let messageDataSource : MessageDataSourceProtocol
    
    init(dataSource: MessageDataSourceProtocol) {
        self.messageDataSource = dataSource
    }
    
    func getWelcomeMessage(name: String) -> MessageEntity {
        messageDataSource.getMessageFromSource(name: name)
    }
    
}
