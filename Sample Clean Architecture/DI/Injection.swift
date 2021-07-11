//
//  Injection.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

final class Injection: NSObject {
    
    private func provideDataSource() -> MessageDataSourceProtocol {
        return MessageDataSource() as! MessageDataSourceProtocol
    }
    
    private func proviedeRepository() -> MessageRepositoryProtocol {
        let messageDataSource =  provideDataSource()
        return MessageRepository(dataSource: messageDataSource)
    }
    
    func provideUseCase() -> MessageUseCase {
        let messageRepository = proviedeRepository()
        return MessageInteractor(repository: messageRepository)
    }
    
}
