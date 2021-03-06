//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
  
  private static var presenter: ___VARIABLE_sceneName___PresenterSpy!
  private var interactor: ___VARIABLE_sceneName___Interactor!
  
  struct ___VARIABLE_sceneName___TestInjector: ___VARIABLE_sceneName___Factorable {
    
    func makePresenter(_ viewController: ___VARIABLE_sceneName___DisplayLogic?) -> ___VARIABLE_sceneName___PresentationLogic {
      presenter = ___VARIABLE_sceneName___PresenterSpy()
      return presenter
    }
  }
  
  final class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresentationLogic {
    var firstExpectation: XCTestExpectation!
    var firstResult: NSObject!
    
    func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response) {
      
      switch response {
        //      case .doSomething(let result):
        //        firstResult = result
        //        firstResult.fulfill()
      }
    }
  }
  
  override func setUp() {
    interactor = ___VARIABLE_sceneName___Interactor(factory: ___VARIABLE_sceneName___TestInjector(), viewController: nil, dataSource: ___VARIABLE_sceneName___Model.DataSource())
  }
  
  override func tearDown() {
    ___VARIABLE_sceneName___InteractorTests.presenter = nil
    interactor = nil
  }
  
  func test___VARIABLE_sceneName___InteractorShouldWhenThen() {
    //add test here
  }
}
