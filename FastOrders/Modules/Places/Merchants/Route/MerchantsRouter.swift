//
//  MerchantsRouter.swift
//  FastOrders
//
//  Created by Anton Poltoratskyi on 06.12.16.
//  Copyright © 2016 Poltoratskyi Team. All rights reserved.
//

import UIKit

class MerchantsRouter: Router<MerchantsViewController> {
    
    
    //MARK: - Routes
    
    func presentMenuViewController(for merchant: Merchant) {
        
        let storyboard = UIStoryboard(name: "Content", bundle: nil)
        
        let menuVC = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        
        menuVC.interactor = MenuInteractor(viewController: menuVC)
        menuVC.router = MenuRouter(viewController: menuVC)
        
        menuVC.merchant = merchant
        
        viewController?.navigationController?.pushViewController(menuVC, animated: true)
    }
    
}
