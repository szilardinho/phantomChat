//
//  ViewController.swift
//  phantomText
//
//  Created by Szi Gabor on 3/8/16.
//  Copyright © 2016 nuSyntax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()

    
        let viewOne : ViewOne = ViewOne(nibName: "ViewOne", bundle: nil)
        
        let viewTwo : ViewTwo = ViewTwo(nibName: "ViewTwo", bundle: nil)
        
        let viewThree : ViewThree = ViewThree(nibName: "ViewThree", bundle: nil)
        
        self.addChildViewController(viewOne)
        self.scrollView.addSubview(viewOne.view)
        viewOne.didMoveToParentViewController(self)
        
        self.addChildViewController(viewTwo)
        self.scrollView.addSubview(viewTwo.view)
        viewTwo.didMoveToParentViewController(self)
        
        var V2Frame : CGRect = viewTwo.view.frame
        V2Frame.origin.x = self.view.frame.width
        viewTwo.view.frame = V2Frame
        
        self.addChildViewController(viewThree)
        self.scrollView.addSubview(viewThree.view)
        viewThree.didMoveToParentViewController(self)
        
        var V3Frame : CGRect = viewThree.view.frame
        V3Frame.origin.x = 2 * self.view.frame.width
        viewThree.view.frame = V3Frame
    
    
        
                                                            //multiply by the number of views you have
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.size.height)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

