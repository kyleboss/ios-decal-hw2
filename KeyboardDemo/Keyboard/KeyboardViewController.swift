//
//  KeyboardViewController.swift
//  Keyboard
//
//  Created by Kyle Boss on 9/20/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var button0: UIButton!
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var buttonRet: UIButton!
    @IBOutlet var buttonBack: UIButton!
    @IBOutlet var buttonChange: UIButton!

    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadKeyboard()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.

    }
    
    func btn0Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("ಠ_ಠ")
    }
    
    func btn1Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(╯°□°）╯︵ ┻━┻")
    }
    
    func btn2Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(͡° ͜ʖ ͡°)")
    }
    
    func btn3Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("ヽ༼ຈل͜ຈ༽ﾉ")
    }
    
    func btn4Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("┬──┬ ノ( ゜-゜ノ)")
    }
    
    func btn5Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(ﾟヮﾟ)")
    }
    
    func btn6Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("¯\\_(ツ)_/¯")
    }
    
    func btn7Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("(づ｡◕‿‿◕｡)づ")
    }
    
    func btn8Pressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("ლ(ಠ益ಠლ)")
    }
    
    func btnRetPressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func btnBackPressed() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func loadKeyboard() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        view.addSubview(keyboardView)
        keyboardView.frame = view.frame
        button0.addTarget(self, action: "btn0Pressed", forControlEvents: .TouchUpInside)
        button1.addTarget(self, action: "btn1Pressed", forControlEvents: .TouchUpInside)
        button2.addTarget(self, action: "btn2Pressed", forControlEvents: .TouchUpInside)
        button3.addTarget(self, action: "btn3Pressed", forControlEvents: .TouchUpInside)
        button4.addTarget(self, action: "btn4Pressed", forControlEvents: .TouchUpInside)
        button5.addTarget(self, action: "btn5Pressed", forControlEvents: .TouchUpInside)
        button6.addTarget(self, action: "btn6Pressed", forControlEvents: .TouchUpInside)
        button7.addTarget(self, action: "btn7Pressed", forControlEvents: .TouchUpInside)
        button8.addTarget(self, action: "btn8Pressed", forControlEvents: .TouchUpInside)
        buttonRet.addTarget(self, action: "btnRetPressed", forControlEvents: .TouchUpInside)
        buttonBack.addTarget(self, action: "btnBackPressed", forControlEvents: .TouchUpInside)
        buttonChange.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside)

    }

}
