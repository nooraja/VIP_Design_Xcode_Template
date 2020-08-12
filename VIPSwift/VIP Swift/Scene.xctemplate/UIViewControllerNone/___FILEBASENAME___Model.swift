//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

enum ___VARIABLE_sceneName___Model {
	
	enum Request {
		case do<#T##title: String?##String?#>(<#T##title: String?##String?#>: <#T##title: String?##String?#>)
	}
	
	enum Response {
		case <#T##title: String?##String?#>(data: <#T##title: String?##String?#>)
	}
	
	enum ViewModel {
		case <#T##title: String?##String?#>(viewModel: <#T##title: String?##String?#>)
	}
	
	enum Route {
		case dismiss___VARIABLE_sceneName___Scene
	}
	
	struct DataSource: DataSourceable {
		var data: <#T##title: String?##String?#>
	}
}
