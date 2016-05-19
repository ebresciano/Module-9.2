//
//  EntryDetailViewController.swift
//  Journal again
//
//  Created by Eva Marie Bresciano on 5/18/16.
//  Copyright © 2016 Module 8.2. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let entry = entry {
            updateWith(entry)
        }
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWith(entry: Entry) {
        textField.text = entry.title
        bodyTextView.text = entry.bodyText

    }
    
    
    func textFieldShouldReturn(textfield: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    // MARK: - Actions
    
    
    @IBAction func clearButton(sender: AnyObject) {
        textField.text = ""
        bodyTextView.text = ""
    }
    
    
    @IBAction func saveButton(sender: UIButton) {
        if let entry = entry {
            entry.title = textField.text ?? ""
            entry.bodyText = bodyTextView.text ?? ""
        } else {
            let entry = Entry(title: textField.text ?? "", bodyText: bodyTextView.text ?? "", timeStamp: NSDate())
            EntryController.sharedInstance.addEntry(entry)
            //self.entry = entry
        }
        
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
    
}