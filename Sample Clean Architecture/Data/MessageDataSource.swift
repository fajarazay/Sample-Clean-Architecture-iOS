//
//  MessageDataSource.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

class MessageDataSource : MessageDataSourceProtocol {
   
   func getMessageFromSource(name: String) -> MessageEntity {
      return MessageEntity (
          welcomeMessage: "Hello \(name) Welcome to Clean Architecture"
      )
   }
   
}
