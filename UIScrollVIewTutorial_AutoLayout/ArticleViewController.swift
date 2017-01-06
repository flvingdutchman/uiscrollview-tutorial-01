//
//  ArticleViewController.swift
//  UIScrollVIewTutorial_AutoLayout
//
//  Created by Василий Ванин on 06/01/17.
//  Copyright © 2017 dinamika. All rights reserved.
//

import UIKit

class ArticleViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    
    let articleTitle = "Alan Turing"
    let articleText = "<p><small>From Wikipedia, the free encyclopedia</small></p>"
                    + "<ol><li>Early life</li>"
                    + "<li>Education"
                        + "<ol><li>School</li>"
                        + "<li>Christopher Morcom</li>"
                        + "<li>University and work on computability</li>"
                        + "</ol></li>"
                    + "<li>Cryptanalysis</li>"
                    + "<ol><li>Bombe</li>"
                    + "<li>Hut 8 and the naval Enigma</li>"
                    + "<li>Turingery</li>"
                    + "<li>Delilah</li>"
                    + "</ol></li></ol>"
                    + "<hr/>"
                    + "<p><b>Alan Mathison Turing OBE FRS</b> (/ˈtjʊərɪŋ/; 23 June 1912 – 7 June 1954)"
                    + "was an English computer scientist, mathematician, logician, cryptanalyst and "
                    + "theoretical biologist. He was highly influential in the development of theoretical"
                    + "computer science, providing a formalisation of the concepts of algorithm and computation"
                    + "with the Turing machine, which can be considered a model of a general purpose computer."
                    + "Turing is widely considered to be the father of theoretical computer science and"
                    + "artificial intelligence</p>"
                    + "<p>During the Second World War, Turing worked for the "
                    + "Government Code and Cypher School (GC&CS) at Bletchley Park,"
                    + "Britain's codebreaking centre. For a time he led Hut 8, the "
                    + "section responsible for German naval cryptanalysis. He devised"
                    + " a number of techniques for speeding the breaking of German "
                    + " ciphers, including improvements to the pre-war Polish bombe "
                    + "method, an electromechanical machine that could find settings"
                    + " for the Enigma machine. Turing played a pivotal role in "
                    + " cracking intercepted coded messages that enabled the Allies"
                    + " to defeat the Nazis in many crucial engagements, including "
                    + " the Battle of the Atlantic; it has been estimated that this "
                    + " work shortened the war in Europe by more "
                    + " than two years and saved over fourteen million lives.</p>"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set title of article
        titleLabel.text = articleTitle
        
        // Set text of article
        do {
            
            let attributedString = try
                
                NSMutableAttributedString(
                    data: articleText.data(using: String.Encoding.utf8, allowLossyConversion: true)!,
                    options: [NSDocumentTypeDocumentAttribute: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue],
                    documentAttributes: nil
            )
            
           
            textLabel.attributedText = attributedString
            
        }catch{}
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
