//
//  ViewController.swift
//  ApiParser
//
//  Created by Асанкул Садыков on 9/8/22.
//

import UIKit

class ViewController: UIViewController {
    
    let link = "https://www.7timer.info/bin/astro.php?lon=113.2&lat=23.1&ac=0&unit=metric&output=json&tzshift=0"

    override func viewDidLoad() {
        parseApi()
    }
}

// MARK: - Networking
extension ViewController {
    private func parseApi() {
        guard let url = URL(string: link) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            do {
                let product = try JSONDecoder().decode(Product.self, from: data)
                print(product)
            } catch let error {
                print(error)
            }

        }.resume()
    }
}


