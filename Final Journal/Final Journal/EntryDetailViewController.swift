//
//  EntryDetailViewController.swift
//  Final Journal
//
//  Created by Eva Marie Bresciano on 5/19/16.
//  Copyright © 2016 Module 9.2. All rights reserved.
//

import UIKit

class EntryDetailViewController: UIViewController {
    
    // MARK: - Outlets
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var bodyTextView: UITextView!
    
    var entry: Entry?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let entry = entry {
            updateWith(entry)
        }
    }
    

        // Do any additional setup after loading the view.
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func updateWith(entry: Entry) {
        titleTextField.text = entry.title
        bodyTextView.text = entry.bodyText
    }
    
    func textFieldShouldReturn(titleTextField: UITextField) -> Bool {
        titleTextField.resignFirstResponder()
        return true
        }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - Actions

    @IBAction func saveEntry(sender: AnyObject) {
        if let entry = entry {
            entry.title = titleTextField.text ?? ""
            entry.bodyText = bodyTextView.text ?? "" }
        else {
            let entry = Entry(title: titleTextField.text ?? "", bodyText: bodyTextView.text ?? "", timeStamp: NSDate())
                EntryController.sharedInstance.addEntry(entry)
        
            self.navigationController?.popToRootViewControllerAnimated(true)
        }
    }
    
            
    @IBAction func clearEntry(sender: AnyObject) {
        titleTextField.text = ""
        bodyTextView.text = ""
    

    }
}
