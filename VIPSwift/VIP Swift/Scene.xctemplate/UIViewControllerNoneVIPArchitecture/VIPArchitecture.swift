//
//  VIPAchitecture.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates(https://github.com/Andrei-Popilian/VIP_Design_Xcode_Template)
//  so you can apply clean architecture to your iOS and MacOS projects,
//  see more http://clean-swift.com
//

import UIKit

protocol Interactable {
    
    associatedtype DataSource: DataSourceable
    associatedtype DisplayLogic
    
    init(viewController: DisplayLogic?, dataSource: DataSource)
}

protocol Presentable {
    
    associatedtype DisplayLogic
    
    init(_ viewController: DisplayLogic?)
}

protocol Displayable where Self: UIViewController {
    
    associatedtype DataSource: DataSourceable
    associatedtype View: UIView
    
    init(mainView: View, dataSource: DataSource)
}

protocol DataSourceable {}

protocol Routeable {
    
    init(_ viewController: UIViewController?)
}
