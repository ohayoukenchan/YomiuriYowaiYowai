//
//  Storyboardable.swift
//  YomiuriYowaiYowai
//
//  Created by Kenta Takano on 2017/06/28.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import UIKit

protocol Storyboardable: NSObjectProtocol {
    static var storyboardName: String { get }
    static func instantiate() -> Self
}

extension Storyboardable where Self: UIViewController {
    static var storyboardName: String {
        return className
    }
    
    static func instantiate() -> Self {
        return UIStoryboard(name: storyboardName, bundle: .main).instantiateInitialViewController() as! Self
    }
}
