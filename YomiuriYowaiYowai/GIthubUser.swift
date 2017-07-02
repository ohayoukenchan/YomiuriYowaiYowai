//
//  GIthubUser.swift
//  YomiuriYowaiYowai
//
//  Created by era on 2017/07/01.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import UIKit
import Himotoki

struct GithubUser: Decodable {
    let login: String
    let avatarUrl: URL
    let htmlUrl: URL
    
    init(login: String, avatarUrl: String, htmlUrl: String) throws {
        guard let _avatarUrl = URL(string: avatarUrl) else {
            throw DecodeError.custom("cannnot generate url with \(avatarUrl)")
        }
        
        guard let _htmlUrl = URL(string: htmlUrl) else {
            throw DecodeError.custom("cannnot generate url with \(htmlUrl)")
        }
        
        self.login = login
        self.avatarUrl = _avatarUrl
        self.htmlUrl = _htmlUrl
    }
    
    static func decode(_ e: Extractor) throws -> GithubUser {
        return try GithubUser(
            login: e <| "login",
            avatarUrl: e <| "avatar_url",
            htmlUrl: e <| "html_url"
        )
    }
}

