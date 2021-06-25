//
//  FeedViewController.swift
//  navigation
//
//  Created by Антон Кангин on 25.06.2021.
//

import UIKit

class FeedViewController: UIViewController {
  
  var newPost = Post(title: "New post")
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    switch segue.identifier {
    case "toPostScreen":
      preparePostScreen(segue)
    default:
      break
    }
  }
  
  
  private func preparePostScreen(_ segue: UIStoryboardSegue) {
    guard let destinationController = segue.destination as? PostViewController else { return }
    destinationController.title = newPost.title
  }
}
