//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import XCTest
@testable import ___PROJECTNAME___


final class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
  
  private static var presenter: ___VARIABLE_sceneName___Presenter!
  private var viewController: ___VARIABLE_sceneName___ViewControllerSpy!
  
  struct ___VARIABLE_sceneName___InjectorTest: ___VARIABLE_sceneName___Factorable {
    
    func makePresenter(_ viewController: ___VARIABLE_sceneName___DisplayLogic?) -> ___VARIABLE_sceneName___PresentationLogic {
      presenter = ___VARIABLE_sceneName___Presenter(viewController)
      return presenter
    }
  }
  
  final class ___VARIABLE_sceneName___ViewControllerSpy: ___VARIABLE_sceneName___ViewController {
    var firstResult: String!
    
    override func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel) {
      
      switch viewModel {
        //      case .doSomething(let result):
        //        firstResult = result
      }
    }
  }
  
  override func setUp() {
    viewController = ___VARIABLE_sceneName___ViewControllerSpy(factory: ___VARIABLE_sceneName___InjectorTest(), mainView: ___VARIABLE_sceneName___View(), dataSource: ___VARIABLE_sceneName___Model.DataSource())
  }
  
  override func tearDown() {
    viewController = nil
    ___VARIABLE_sceneName___PresenterTests.presenter = nil
  }
  
  func test___VARIABLE_sceneName___PresenterWhenShouldThen() {
    //add test here
  }
}
