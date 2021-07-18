//
//  MessageUseCaseTests.swift
//  Sample Clean ArchitectureTests
//
//  Created by Quipper Indonesia on 18/07/21.
//

import XCTest

@testable import Sample_Clean_Architecture
class MessageUseCaseTests: XCTestCase {

   static var input : String = "Fajar Septian"
   static var messageEntity = MessageEntity(
      welcomeMessage : "Lorem Ipsum"
   )
   
   func testGetDataFromUseCase() throws {
      //given
      let usecase = MessageInteractorMock()
      
      //when
      let result = usecase.getMessage(name: MessageUseCaseTests.input)
      XCTAssert(usecase.verify())
      
      //then
      XCTAssert(result.welcomeMessage.contains(
         MessageUseCaseTests.messageEntity.welcomeMessage
      )
      )
   }

}

extension MessageUseCaseTests {
   
   class MessageInteractorMock: MessageUseCase {
      
      var functionWasCalled = false
      func getMessage(name: String) -> MessageEntity {
         functionWasCalled = true
         return messageEntity
      }
      
      func verify() -> Bool {
         return functionWasCalled
      }
      
   }
   
}
