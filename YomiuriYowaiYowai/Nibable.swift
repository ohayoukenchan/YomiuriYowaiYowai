//
//  Nibable.swift
//  YomiuriYowaiYowai
//
//  Created by era on 2017/07/01.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import UIKit

protocol Nibable: NSObjectProtocol {
    static var nibName: String { get }
    static var nib: UINib { get }
}

extension Nibable {
    static var nibName: String {
        return className
    }
    
    static var nib: UINib {
        return UINib(nibName: nibName, bundle: Bundle(for: self))
    }
}

