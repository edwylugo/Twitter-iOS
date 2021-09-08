//
//  ConversationsController.swift
//  TwitterTutorial
//
//  Created by Edwy Lugo on 02/12/20.
//  Copyright © 2020 SDvirtua Marketing Digital. All rights reserved.
//

import UIKit

class ConversationsController: UIViewController {
   //MARK: - Properties
       
   //MARK: - Lifecycle

   override func viewDidLoad() {
       super.viewDidLoad()
        configureUI()
   }
   
   //MARK: - Helpers
   func configureUI() {
       view.backgroundColor = .white
       navigationItem.title = "Messages"
   }
}
