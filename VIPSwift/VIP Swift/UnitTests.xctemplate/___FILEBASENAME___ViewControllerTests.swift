//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
  
  private static var interactor: ___VARIABLE_sceneName___Interactor!
  private var viewController: ___VARIABLE_sceneName___ViewControllerSpy!
  
  struct ___VARIABLE_sceneName___TestInjector: ___VARIABLE_sceneName___Factorable {
    
    func makeInteractor(factory: ___VARIABLE_sceneName___PresenterFactorable & ___VARIABLE_sceneName___ServicesFactorable, viewController: ___VARIABLE_sceneName___DisplayLogic?, dataSource: ___VARIABLE_sceneName___Model.DataSource) -> ___VARIABLE_sceneName___Interactable {
      interactor = ___VARIABLE_sceneName___Interactor(factory: factory, viewController: viewController, dataSource: dataSource)
      return interactor
    }
  }
  
  final class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___ViewController {
    var firstExpectation: XCTestExpectation!
    var firstResult: NSObject!
    
    override func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel) {
      switch viewModel {
        //case .doSomething(let result):
        //  firstResult = result
        //  firstExpectation.fulfill()
      }
    }
  }
  
  override func setUp() {
    viewController = ___VARIABLE_sceneName___ViewControllerSpy(factory: ___VARIABLE_sceneName___TestInjector(), mainView: ___VARIABLE_sceneName___View(), dataSource: ___VARIABLE_sceneName___Model.DataSource())
  }
  
  override func tearDown() {
    ___VARIABLE_sceneName___ViewControllerTests.interactor = nil
    viewController = nil
  }
  
  func test___VARIABLE_sceneName___ViewControllerWhenShouldThen() {
    //add test here
  }
}
