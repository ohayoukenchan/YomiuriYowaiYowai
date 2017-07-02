//
//  SearchUserViewModel.swift
//  YomiuriYowaiYowai
//
//  Created by era on 2017/07/01.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

final class SearchUserViewModel {
    
//    let users: Variable<[GithubUser]> = Variable([GithubUser]())
//    let totalCount: Variable<Int> = Variable(0)
//    let isLoading: Variable<Bool> = Variable(false)
//    let error: Variable<Error?> = Variable(nil)
//    
//    private(set) lazy var usersCountText: Observable<String> = Observable<String>
//        .combineLatest(self.users.asObservable(), self.totalCount.asObservable()) { "\($0.count) / \($1)"}
//    
//    private var currentQuery: String? = nil
//    private let perPage: Int = 20
//    private var hasMoreUsers: Bool {
//        guard users.value.count > 0 && totalCount.value > 0 else {
//            return true
//        }
//        return users.value.count < totalCount.value
//    }
//    
//    private var disposeBag: DisposeBag = DisposeBag()
//    
    func fetchUsers(with query: String) {
        print(query)
//        totalCount.value = 0
//        users.value.removeAll()
//        
//        currentQuery = query
//        
//        isLoading.value = true
//        fetchMoreUsers()
    }
//
//    //追加取得用のメソッド
//    func fetchMoreUsers() {
//        //追加取得のため、currentQueryを使う必要がある
//        guard let currentQuery = currentQuery, !currentQuery.isEmpty, hasMoreUsers else {
//            isLoading.value = false
//            return
//        }
//        disposeBag = DisposeBag()
//        let page = Int(users.value.count / perPage) + 1
//        let request = GithubSearchUserRequest(query: currentQuery, page: page, perPage: perPage)
//        GithubSession.send(request)
//            .do(onCompleted: { [unowned self] in
//                self.isLoading.value = false
//            })
//            .do(onError: { [unowned self] error in
//                self.error.value = error
//                self.isLoading.value = false
//            })
//            .subscribe(onNext: { [unowned self] response in
//                self.users.value += response.value
//                self.totalCount.value = response.totalCount
//            })
//            .addDisposableTo(disposeBag)
//    }
}

