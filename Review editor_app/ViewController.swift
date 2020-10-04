//
//  ViewController.swift
//  Review editor_app
//
//  Created by DDDD on 01/10/2020.
//

import UIKit

class ViewController: UITableViewController {
    
    var reviews = [[String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reviews.append(["THE PROFESSOR: 2019", "After learning he has six months to live, a college lecturer transforms into a rebellious party animal. To the shock of his wife and school schancellor -- and to the delight of his students -- he leads a crusade against authority and hypocrisy."])
        reviews.append(["JEXI: 2019", "Phil has a major dependency issue -- he's addicted to his cellphone. He has no friends and his love life is nonexistent. Forced to upgrade to a new phone, Phil soon learns that the latest model comes with Jexi -- an artificial intelligence life coach, virtual assistant and cheerleader. With its help, he begins to get a real life. But as he becomes less dependent on the phone, Jexi starts to morph into a tech nightmare that's determined to keep Phil all to itself."])
        reviews.append(["THE HUSTLE: 2019", "Josephine Chesterfield is a glamorous, seductive British woman who has a penchant for defrauding gullible men out of their money. Into her well-ordered, meticulous world comes Penny Rust, a cunning and fun-loving Australian woman who lives to swindle unsuspecting marks. Despite their different methods, the two grifters soon join forces for the ultimate score -- a young and naive tech billionaire in the South of France."])
        reviews.append(["BOOKSMART: 2019", "Academic overachievers Amy and Molly thought keeping their noses to the grindstone gave them a leg up on their high school peers. But on the eve of graduation, the best friends suddenly realize that they may have missed out on the special moments of their teenage years. Determined to make up for lost time, the girls decide to cram four years of not-to-be missed fun into one night -- a chaotic adventure that no amount of book smarts could prepare them for."])
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return reviews.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let review = reviews[indexPath.row]
        cell.textLabel?.attributedText = makeAttributedString(title: review[0], subtitle: review[1])
 
        return cell
    }
    
    func makeAttributedString(title: String, subtitle: String) -> NSAttributedString {
        
        let titleAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .headline), NSAttributedString.Key.foregroundColor: UIColor.blue]
        
        let subtitleAttributes = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .subheadline)]
        
        let titleString = NSMutableAttributedString(string: subtitle, attributes: titleAttributes)
        let subtitleString = NSAttributedString(string: subtitle, attributes: subtitleAttributes)
        
        titleString.append(subtitleString)
        
        return titleString
    }
    
    
    
    
    
}
