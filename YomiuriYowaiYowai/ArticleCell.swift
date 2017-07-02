//
//  ArticleCell.swift
//  YomiuriYowaiYowai
//
//  Created by era on 2017/07/01.
//  Copyright © 2017年 Kenta Takano. All rights reserved.
//

import UIKit
import Kingfisher


class ArticleCell: UITableViewCell, Nibable {
    static let defaultHeight: CGFloat = 80
 
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var urlLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        nameLabel.textColor = UIColor(github: .blue)
        urlLabel.textColor = UIColor(github: .textGray)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

    func configure(with user: GithubUser) {
        iconImageView.kf.cancelDownloadTask()
        nameLabel.text = user.login
        urlLabel.text = user.htmlUrl.absoluteString
        iconImageView.kf.setImage(with: user.avatarUrl, options: [.transition(.fade(0.3))])
    }
}
