//
//  LaunchCell.swift
//  JustoChallenge
//
//  Created by Alberto Josue Gonzalez Juarez on 16/08/21.
//

import Foundation
import SDWebImage
class LaunchCell: UITableViewCell {
    @IBOutlet weak var imageLaunch: UIImageView!
    @IBOutlet weak var labelname: UILabel!
    @IBOutlet weak var labelnameSite: UILabel!
    @IBOutlet weak var labelDate: UILabel!
    
    func setupCell(launch: LaunchPastQuery.Data.LaunchesPast?) {
        if let ship = launch?.ships?.first,let imageUrl = ship?.image {
            imageLaunch.sd_imageIndicator = SDWebImageActivityIndicator.gray
            imageLaunch.sd_setImage(with: URL(string: imageUrl), placeholderImage: UIImage(systemName: "safari.fill"))
        } else {
            imageLaunch.image = UIImage(systemName: "safari.fill")
        }
        labelname.text = launch?.missionName
        labelnameSite.text = launch?.launchSite?.siteNameLong
        labelDate.text = launch?.launchDateLocal
    }
    
}

