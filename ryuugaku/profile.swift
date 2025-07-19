//
//  profile.swift
//  ryuugaku
//
//  Created by 田口楽 on 2025/07/05.
//

import UIKit

class profile: UIViewController {

    @IBOutlet var name: UILabel!;
    @IBOutlet var country: UILabel!;
    @IBOutlet var language: UILabel!;
    @IBOutlet var sentence: UILabel!;
    @IBOutlet var ninn: UILabel!;
    @IBOutlet var icon: UIImageView!;
    @IBOutlet var favorite: UIImageView!;
    @IBOutlet var toukou: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        name.text = "raku"
        sentence.text = "文章書く"
        country.text = "日本"
        icon.image = UIImage(systemName: "person")
    }
    


}
