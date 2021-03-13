//
//  ApplicationScheme.swift
//  valorantRandomizer
//
//  Created by Roshan Jamkatel on 3/13/21.
//

import UIKit

import MaterialComponents

class ApplicationScheme: NSObject {

  private static var singleton = ApplicationScheme()

  static var shared: ApplicationScheme {
    return singleton
  }


  public let colorScheme: MDCColorScheming = {
    let scheme = MDCSemanticColorScheme(defaults: .material201804)
    //TODO: Customize our app Colors after this line
    
    scheme.secondaryColor =
      UIColor(red: 197.0/255.0, green: 3.0/255.0, blue: 43.0/255.0, alpha: 1.0)
    
    scheme.primaryColor = UIColor(red: 0.30, green: 0.69, blue: 0.31, alpha: 1.00)
    
    return scheme
  }()


}
