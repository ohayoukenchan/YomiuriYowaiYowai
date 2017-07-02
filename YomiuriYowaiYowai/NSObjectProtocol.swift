//
//  NSObjectProtocol.swift
//  YomiuriYowaiYowai
//
//  Created by Kenta Takano on 2017/06/28.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//


import Foundation

extension NSObjectProtocol {
    static var className: String {
        return String(describing: self)
    }
}
