//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___RouterTests: XCTestCase {
  
  private static var router: ___VARIABLE_sceneName___Router!
  private var viewController: ___VARIABLE_sceneName___ViewControllerSpy!
  
  struct ___VARIABLE_sceneName___InjectorTest: ___VARIABLE_sceneName___Factorable {
    
    func makeRouter(viewController: UIViewController?) -> ___VARIABLE_sceneName___Routing {
      router = ___VARIABLE_sceneName___Router(viewController)
      return router
    }
  }
  
  final class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___ViewController {
    var deinitExpectation: XCTestExpectation!
    var isDismissed: Bool = false
    
    override func dismiss(animated flag: Bool, completion: (() -> Void)? = nil) {
      isDismissed = true
      deinitExpectation.fulfill()
    }
  }
  
  override func setUp() {
    viewController = ___VARIABLE_sceneName___ViewControllerSpy(factory: ___VARIABLE_sceneName___InjectorTest(), mainView: ___VARIABLE_sceneName___View(), dataSource: ___VARIABLE_sceneName___Model.DataSource())
  }
  
  override func tearDown() {
    viewController = nil
    ___VARIABLE_sceneName___RouterTests.router = nil
  }
  
  func test___VARIABLE_sceneName___RouterShouldDismissViewController() {
    
    XCTAssertFalse(viewController.isDismissed)
    viewController.deinitExpectation = expectation(description: "___VARIABLE_sceneName___ViewControllerDeinited")
    ___VARIABLE_sceneName___RouterTests.router.routeTo(.dismiss___VARIABLE_sceneName___Scene)
    
    waitForExpectations(timeout: 1, handler: nil)
    
    XCTAssertTrue(viewController.isDismissed)
  }
}

