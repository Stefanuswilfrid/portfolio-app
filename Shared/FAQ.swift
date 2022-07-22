//
//  FAQ.swift
//  portfolio-app
//
//  Created by Stefanus Wilfrid Admaja on 21/07/22.
//

import SwiftUI

struct Bookmark: Identifiable {
    let id = UUID()
    let name: String
    let icon: String
    var items: [Bookmark]?
}

struct FAQ: View {
    let items: [Bookmark] = [.example1,.example2,.example3,.example4]
    
    var body: some View {
            List(items, children: \.items) { row in
                Image(systemName: row.icon)
                Text(row.name)
                
                
            }
        
    }
}

struct FAQ_Previews: PreviewProvider {
    static var previews: some View {
        FAQ()
    }
}

extension Bookmark {
    static let apple = Bookmark(name: "No, and not anytime soon most probably ):", icon: "1.circle")
    
    static let bbc = Bookmark(name: "I'm born in August 2002. ", icon: "square.and.pencil")
    static let swift = Bookmark(name: "My personality type is ISTJ", icon: "bolt.fill")
    static let twitter = Bookmark(name: "I entered uni in 2020, so currently i just finished my sophomore year (year 2)", icon: "books.vertical")
    
    
    static let example1 = Bookmark(name: "Can I Download This App?", icon: "star", items: [Bookmark.apple])
    static let example2 = Bookmark(name: "Which year are you born?", icon: "timer", items: [Bookmark.bbc])
    static let example3 = Bookmark(name: "What is your personality type? ", icon: "person.crop.square.filled.and.at.rectangle", items: [Bookmark.swift])
    
    static let example4 = Bookmark(name: "Which year are you in university? ", icon: "graduationcap.fill", items: [Bookmark.twitter])
    
    


    
}
