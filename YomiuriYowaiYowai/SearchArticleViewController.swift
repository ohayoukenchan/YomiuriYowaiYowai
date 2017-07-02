//
//  SearchArticleViewController.swift
//  YomiuriYowaiYowai
//
//  Created by Kenta Takano on 2017/06/27.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

final class SearchArticleViewController: UIViewController, Storyboardable {
    
    let searchBar: UISearchBar = UISearchBar(frame: .zero)
    let searchCancelButton: UIBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: nil, action: nil)
    @IBOutlet weak var totalCountContentView: UIView!
    @IBOutlet weak var totalCountLabel: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    private let viewModel: SearchUserViewModel = SearchUserViewModel()
    private let disposeBag: DisposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        configureNavigationView()
        configureTableView()
        configureObserver()
    }
    
    func configureNavigationView() {
        navigationItem.titleView = searchBar
        navigationItem.rightBarButtonItem = searchCancelButton
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.barTintColor = UIColor(github: .blue)
        totalCountContentView.backgroundColor = UIColor(github: .gray)
        totalCountLabel.textColor = UIColor(github: .textBlack)
    }
    
    func configureObserver() {
        
        searchBar.rx.text.orEmpty.asDriver()
            .skip(1)
            .debounce(0.3)
            .distinctUntilChanged()
            .drive(onNext: { [unowned self] query in
                self.viewModel.fetchUsers(with: query)
            })
            .addDisposableTo(disposeBag)
    
    }
    
    private func configureTableView() {
        tableView.contentInset.top = totalCountContentView.bounds.size.height
        tableView.scrollIndicatorInsets.top = totalCountContentView.bounds.size.height
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = ArticleCell.defaultHeight
        //tableView.register(ArticleCell.self, forHeaderFooterViewReuseIdentifier: ArticleCell.className)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

