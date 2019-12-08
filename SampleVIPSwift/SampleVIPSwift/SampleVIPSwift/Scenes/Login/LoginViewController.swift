//
//  LoginViewController.swift
//  SampleVIPSwift
//
//  Created by Andrei Popilian on 24/11/2019.
//  Copyright (c) 2019 Andrei Popilian. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol LoginDisplayLogic where Self: UIViewController {
  
  func displayViewModel(_ viewModel: LoginModel.ViewModel)
}

final class LoginViewController: UIViewController, Displayable {
  
  typealias LoginFactory = LoginInteractorFactorable & LoginRouterFactorable
  
  private let factory: LoginFactory
  private let mainView: LoginView
  private var interactor: LoginInteractable!
  
  private lazy var router: LoginRouting = {
    factory.makeRouter(viewController: self)
  }()
  
  init(factory: LoginFactory, mainView: LoginView, dataSource: LoginModel.DataSource) {
    self.factory = factory
    self.mainView = mainView
    
    super.init(nibName: nil, bundle: nil)
    self.interactor = factory.makeInteractor(viewController: self, dataSource: dataSource)
  }

  override func loadView() {
    mainView.delegate = self
    view = mainView
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented, You shouldn't initialize the ViewController using Storyboards")
  }
  
  //Only for test purpose
  func getCurrentDataSource() -> LoginModel.DataSource {
    return interactor.dataSource
  }
  
  //Only for test purpose
  func doAuthentication() {
    doAuthentication(withEmail: "email", andPassword: "password")
  }
}


//MARK: - LoginDisplayLogic
extension LoginViewController: LoginDisplayLogic {
  
  func displayViewModel(_ viewModel: LoginModel.ViewModel) {
    DispatchQueue.main.async {
      switch viewModel {
        
      case .authenticate(let userId):
        self.displayAuthenticationSuccess(withUserId: userId)
      }
    }
  }
}


//MARK: - LoginViewDelegate
extension LoginViewController: LoginViewDelegate {
  
  func sendDataBackToParent(_ data: Data) {
    //usually this delegate takes care of user actions and requests through UI
    
    //do something with the data or message sent back from mainView
  }
}


//MARK: - Private Zone
private extension LoginViewController {
  
  func displayAuthenticationSuccess(withUserId userId: String) {
    print("Use the mainView to present the viewModel")
    //example of using router
    router.routeTo(.showAuthenticateSuccess(withUserId: userId))
  }
  
  func doAuthentication(withEmail email: String, andPassword password: String) {
    interactor.doRequest(.authenticate(withEmail: email, andPassword: password))
  }
}

