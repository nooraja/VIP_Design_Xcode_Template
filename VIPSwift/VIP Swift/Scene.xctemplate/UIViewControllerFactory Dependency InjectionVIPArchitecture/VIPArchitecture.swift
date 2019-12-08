//
//  VIPAchitecture.swift
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol Interactable {
    
    associatedtype Factory: Factorable
    associatedtype DataSource: DataSourceable
    associatedtype DisplayLogic
    
    init(factory: Factory, viewController: DisplayLogic?, dataSource: DataSource)
}

protocol Presentable {
    
    associatedtype DisplayLogic
    
    init(_ viewController: DisplayLogic?)
}

protocol Displayable where Self: UIViewController  {
    
    associatedtype Factory: Factorable
    associatedtype DataSource: DataSourceable
    associatedtype View: UIView
    
    init(factory: Factory, mainView: View, dataSource: DataSource)
}

protocol DataSourceable {}

protocol Routeable {
    
    init(_ viewController: UIViewController?)
}