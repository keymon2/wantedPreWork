//
//  ViewController.swift
//  LoadingImage
//
//  Created by seung won lee on 2023/03/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var oneImageView: UIImageView!
    @IBOutlet weak var twoImageView: UIImageView!
    @IBOutlet weak var threeImageView: UIImageView!
    @IBOutlet weak var fourImageView: UIImageView!
    @IBOutlet weak var fiveImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        oneImageView.image = defaultImage
        fourImageView.image = defaultImage
        twoImageView.image = defaultImage
        threeImageView.image = defaultImage
        fiveImageView.image = defaultImage
        // Do any additional setup after loading the view.
    }
    let urlArray: [String] = ["data:image/jpeg;base64,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",
        "https://t1.daumcdn.net/cfile/tistory/2746ED3A57EA350714",
        "https://ichef.bbci.co.uk/news/640/cpsprodpb/12173/production/_108799047_harry-walker_oh-my_00000657.jpg",
         "https://mblogthumb-phinf.pstatic.net/20150529_82/poro5012_1432871623554UjgVC_JPEG/NaverBlog_20150529_125343_01.jpg?type=w420",
        "https://cdn.ibos.kr/design/upload_file/__HTMLEDITOR__/bingbing/1f3a57a3bbc783f2ca9ea0317723a0f2_16176949735557.jpg",
                              
        ]
    let defaultImage = UIImage(systemName: "photo")
    
    @IBAction func firstButtonTapped(_ sender: Any) {
        oneImageView.image = defaultImage
        oneImageView.loadFrom(URLAddress: urlArray[0])
        
    }
    @IBAction func twoButtonTapped(_ sender: Any) {
        twoImageView.image = defaultImage
        twoImageView.loadFrom(URLAddress: urlArray[1])
    }
    @IBAction func threeButtonTapped(_ sender: Any) {
        threeImageView.image = defaultImage
        threeImageView.loadFrom(URLAddress: urlArray[2])
    }
    @IBAction func fourButtonTapped(_ sender: Any) {
        fourImageView.image = defaultImage
        fourImageView.loadFrom(URLAddress: urlArray[3])
    }
    @IBAction func fiveButtonTapped(_ sender: Any) {
        fiveImageView.image = defaultImage
        fiveImageView.loadFrom(URLAddress: urlArray[4])
    }
    @IBAction func AllLoadButtonTapped(_ sender: Any) {
        oneImageView.image = defaultImage
        fourImageView.image = defaultImage
        twoImageView.image = defaultImage
        threeImageView.image = defaultImage
        fiveImageView.image = defaultImage
    oneImageView.loadFrom(URLAddress: urlArray[0])
    twoImageView.loadFrom(URLAddress: urlArray[1])
    threeImageView.loadFrom(URLAddress: urlArray[2])
    fourImageView.loadFrom(URLAddress: urlArray[3])
    fiveImageView.loadFrom(URLAddress: urlArray[4])
        
    }
}
extension UIImageView {
    func loadFrom( URLAddress: String){
        guard let url = URL(string: URLAddress) else {
            return
        }
        DispatchQueue.main.async {
            [weak self] in
            if let imageData = try? Data( contentsOf: url){
                if let loadedImage = UIImage(data: imageData){
                    self?.image = loadedImage
                }
            }
        }
    
    }
}


