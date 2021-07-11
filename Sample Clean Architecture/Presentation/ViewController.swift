//
//  ViewController.swift
//  Sample Clean Architecture
//
//  Created by Quipper Indonesia on 11/07/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var welcome: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let usecase = Injection.init().provideUseCase()
        let presenter = MessagePresenter(useCase: usecase)
        
        let message = presenter.getMessage(name: "Fajar Septian")
        
        welcome.text = message.welcomeMessage
    }


}

