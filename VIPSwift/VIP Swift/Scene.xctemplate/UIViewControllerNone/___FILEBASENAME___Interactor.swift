//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation
import Combine

typealias ___VARIABLE_sceneName___Interactable = ___VARIABLE_sceneName___BusinessLogic & ___VARIABLE_sceneName___DataStore

protocol ___VARIABLE_sceneName___BusinessLogic {
	
	func doRequest(_ request: ___VARIABLE_sceneName___Model.Request)
}

protocol ___VARIABLE_sceneName___DataStore {
	var dataSource: ___VARIABLE_sceneName___Model.DataSource { get set }
}

final class ___VARIABLE_sceneName___Interactor: Interactable, ___VARIABLE_sceneName___DataStore {
	
	var dataSource: ___VARIABLE_sceneName___Model.DataSource
	private var subscriptions = Set<AnyCancellable>()
	private var presenter: ___VARIABLE_sceneName___PresentationLogic
	
	init(viewController: ___VARIABLE_sceneName___DisplayLogic?, dataSource: ___VARIABLE_sceneName___Model.DataSource) {
		self.dataSource = dataSource
		self.presenter = ___VARIABLE_sceneName___Presenter(viewController)
	}
}


// MARK: - ___VARIABLE_sceneName___BusinessLogic
extension ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___BusinessLogic {
	
	func doRequest(_ request: ___VARIABLE_sceneName___Model.Request) {
		DispatchQueue.global(qos: .userInitiated).async {
			
			switch request {
				
			case .<#T##title: String?##String?#>(let item):
				self.<#T##title: String?##String?#>(item)
			case .<#T##title: String?##String?#>:
				self.<#T##title: String?##String?#>()
			case .<#T##title: String?##String?#>(let item):
				self.<#T##title: String?##String?#>(item)
			}
		}
	}
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___Interactor {
	
	func <#T##title: String?##String?#>(_ item: <#T##title: String?##String?#>) {
		presenter.presentResponse(.<#T##title: String?##String?#>(result: <#T##title: String?##String?#>))
	}
}
