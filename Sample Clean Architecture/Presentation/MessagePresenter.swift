//
//  MessagePresenter.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

class MessagePresenter : MessagePresenterProtocol {
    
    private let messageUseCase: MessageUseCase
    
    init(useCase: MessageUseCase) {
        self.messageUseCase = useCase
    }
    
    func getMessage(name: String) -> MessageEntity {
        return messageUseCase.getMessage(name: name)
    }
    
}
