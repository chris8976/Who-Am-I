//
//  ViewController.swift
//  Who Am I
//
//  Created by 6f on 2/7/23.
//

import UIKit

class ViewController: UIViewController {
    var random = 0
    var people = [Person(image: #imageLiteral(resourceName: "images-7"), name: "Daisy Baites" , description: "I was an American civil rights activist, publisher, journalist, and lecturer who played a leading role in the Little Rock Integration Crisis of 1957. "),
                  Person(image: #imageLiteral(resourceName: "frederick_douglass"), name: "Frederick Douglas" , description: "I was an  American social reformer, abolitionist, orator, writer, and statesman. After escaping from slavery in Maryland, he became a national leader of the abolitionist movement in Massachusetts and New York. "),
                  Person(image: #imageLiteral(resourceName: "images-8"), name:
                        "Muhammed Ali" , description: "I was an American professional boxer and activist. Nicknamed The Greatest, he is regarded as one of the most significant sports figures of the 20th century and is frequently ranked as the greatest heavyweight boxer of all time "),
                  Person(image: #imageLiteral(resourceName: "malcom-x"), name: "Malcom X" , description: "I was an American American Muslim minister and human rights activist who was a prominent figure during the civil rights movement. A spokesman for the Nation of Islam until 1964, he was a vocal advocate for Black empowerment and the promotion of Islam within the Black community.. "),
                  Person(image: #imageLiteral(resourceName: "Unknown"), name: "Carter G. Woodson" , description: "I was an American historian, author, journalist, and the founder of the Association for the Study of African American Life and History. He was one of the first scholars to study the history of the African diaspora, including African-American history. "),
    
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        random = randomNumber()
        view.backgroundColor = .cyan
        images.image = people[random].image
        infoBox.text = people[random].description
        
    }

    @IBOutlet weak var answer: UITextField!
    @IBAction func guess(_ sender: Any) {
        

        if answer.text == people[random].name
        {
            random = randomNumber()

            images.image = people[random].image
            infoBox.text = people[random].description
            answer.text = ""
        }
        
    }
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var infoBox: UITextView!
    
    @IBAction func guessBox(_ sender: Any) {
    }
    
    func randomNumber()-> Int
    {
        
        random = Int.random(in: 0..<people.count)
        return random
        
    }
    
}

struct Person{
    var image:UIImage
    var name:String
    var description:String
}
