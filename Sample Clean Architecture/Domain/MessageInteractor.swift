//
//  MessageInteractor.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

class MessageInteractor : MessageUseCase {
    
    private let messageRepository : MessageRepositoryProtocol
    init(repository : MessageRepositoryProtocol) {
        self.messageRepository = repository
    }
    
    func getMessage(name: String) -> MessageEntity {
        return messageRepository.getWelcomeMessage(name: name)
    }
    
}
