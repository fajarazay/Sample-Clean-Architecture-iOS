//
//  MessagePresenterProtocol.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import Foundation

protocol MessagePresenterProtocol : class {
    func getMessage(name: String) -> MessageEntity
}
