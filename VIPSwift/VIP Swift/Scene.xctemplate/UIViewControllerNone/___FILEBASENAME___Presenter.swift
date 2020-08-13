//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

protocol ___VARIABLE_sceneName___PresentationLogic {
	func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response)
}

final class ___VARIABLE_sceneName___Presenter: Presentable {
	private weak var viewController: ___VARIABLE_sceneName___DisplayLogic?
	
	init(_ viewController: ___VARIABLE_sceneName___DisplayLogic?) {
		self.viewController = viewController
	}
}


// MARK: - ___VARIABLE_sceneName___PresentationLogic
extension ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresentationLogic {
	
	func presentResponse(_ response: ___VARIABLE_sceneName___Model.Response) {
		
		switch response {
			
		case .<#T##title: String?##String?#>(let data):
			present<#T##title: String?##String?#>(data)
	 case .<#T##title: String?##String?#>(let data:
	 present<#T##title: String?##String?#>(data)
			case .<#T##title: String?##String?#>(let data):
			present<#T##title: String?##String?#>(data)
		}
	}
}


// MARK: - Private Zone
private extension ___VARIABLE_sceneName___Presenter {
	
	func present<#T##title: String?##String?#>(_ data: <#T##title: String?##String?#>) {
		
		guard let validData = <#expression#> else { return <#return value#> }
		
		viewController?.displayViewModel(.<#T##title: String?##String?#>(viewModel: validData))
	}
	
	func present<#T##title: String?##String?#>(_ data: <#T##title: String?##String?#>) {
		
		guard let validData = <#expression#> else { return <#return value#> }
		
		viewController?.displayViewModel(.<#T##title: String?##String?#>(viewModel: validData))
	}
	
	func present<#T##title: String?##String?#>(_ data: <#T##title: String?##String?#>) {
		
		guard let validData = <#expression#> else { return <#return value#> }
		
		viewController?.displayViewModel(.<#T##title: String?##String?#>(viewModel: validData))
	}
}
