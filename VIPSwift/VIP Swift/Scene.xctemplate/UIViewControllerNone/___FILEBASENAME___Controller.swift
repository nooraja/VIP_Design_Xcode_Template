//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

protocol ___VARIABLE_sceneName___DisplayLogic where Self: UIViewController {
	
	func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel)
}

final class ___VARIABLE_sceneName___Controller: UIViewController, Displayable, ___VARIABLE_sceneName___DisplayLogic {
	
	private let mainView: ___VARIABLE_sceneName___View
	private var interactor: ___VARIABLE_sceneName___Interactable!
	private var router: ___VARIABLE_sceneName___Routing!
	
	init(mainView: ___VARIABLE_sceneName___View, dataSource: ___VARIABLE_sceneName___Model.DataSource) {
		self.mainView = mainView
		
		super.init(nibName: nil, bundle: nil)
		interactor = ___VARIABLE_sceneName___Interactor(viewController: self, dataSource: dataSource)
		router = ___VARIABLE_sceneName___Router(self)
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		//interactor.doSomething(item: 22)
	}
	
	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)

		navigationController?.hideKeyboardWhenTappedAround()
		navigationController?.navigationBar.backgroundColor = UIColor.white
		navigationController?.interactivePopGestureRecognizer?.isEnabled = true
	}
	
	override func viewWillDisappear(_ animated: Bool) {
		super.viewWillDisappear(animated)

		navigationController?.navigationBar.backgroundColor = nil
	}
	
	override func loadView() {
		view = mainView
		mainView.delegate = self
	}
	
	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented, You should't initialize the ViewController through Storyboards")
	}
	
	
	// MARK: - ___VARIABLE_sceneName___DisplayLogic
	func displayViewModel(_ viewModel: ___VARIABLE_sceneName___Model.ViewModel) {
		DispatchQueue.main.async {
			switch viewModel {
				
			case .<#T##title: String?##String?#>(let viewModel):
				self.display<#T##title: String?##String?#>(viewModel)
				case .<#T##title: String?##String?#>(let viewModel):
				self.display<#T##title: String?##String?#>(viewModel)
				case .<#T##title: String?##String?#>(let viewModel):
				self.display<#T##title: String?##String?#>(viewModel)
			}
		}
	}
}


// MARK: - ___VARIABLE_sceneName___ViewDelegate
extension ___VARIABLE_sceneName___Controller: ___VARIABLE_sceneName___ViewDelegate, UIGestureRecognizerDelegate {
	
	func sendDataBackToParent(_ data: Data) {
		//usually this delegate takes care of users actions and requests through UI
		
		//do something with the data or message send back from mainView
	}
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___Controller {
	
	func display<#T##title: String?##String?#>(_ viewModel: <#T##title: String?##String?#>) {
		
	}
	
	func display<#T##title: String?##String?#>(_ viewModel: <#T##title: String?##String?#>) {
		
	}
	
	func display<#T##title: String?##String?#>(_ viewModel: <#T##title: String?##String?#>) {
		
	}
}
