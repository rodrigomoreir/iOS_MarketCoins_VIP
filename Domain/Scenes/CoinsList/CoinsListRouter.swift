//
//  CoinsListRouter.swift
//  MarketCoins
//
//  Created by Rodrigo Alves Moreira on 19/10/23.
//  Copyright (c) 2023 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the VIP Swift Xcode Templates(https://github.com/Andrei-Popilian/VIP_Design_Xcode_Template)
//  so you can apply clean architecture to your iOS and MacOS projects,
//  see more http://clean-swift.com
//

import UIKit

protocol CoinsListRouting {
  
  func routeTo(_ route: CoinsListModel.Route)
}

final class CoinsListRouter {
  
  private weak var viewController: UIViewController?
  
  init(viewController: UIViewController?) {
    self.viewController = viewController
  }
}


// MARK: - CoinsListRouting
extension CoinsListRouter: CoinsListRouting {
  
  func routeTo(_ route: CoinsListModel.Route) {
    DispatchQueue.main.async {
      switch route {
        
      case .dismissCoinsListScene:
        self.dismissCoinsListScene()
        
      case .xScene(let data):
        self.showXSceneBy(data)
      }
    }
  }
}


// MARK: - Private Zone
private extension CoinsListRouter {
  
  func dismissCoinsListScene() {
    viewController?.dismiss(animated: true)
  }
  
  func showXSceneBy(_ data: Int) {
    print("will show the next screen")
  }
}