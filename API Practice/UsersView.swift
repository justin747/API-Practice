//
//  UsersView.swift
//  API Practice
//
//  Created by Justin on 5/3/23.
//

import SwiftUI

struct UsersView: View {
    
    let user: User
     
    var body: some View {
        
        VStack(alignment: .leading) {
            Text("**Name**: \(user.name)")
            Text("**Email**: \(user.email)")
            Divider()
            Text("**Company**: \(user.company.name)")
            
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color.gray.opacity(0.2), in: RoundedRectangle(cornerRadius: 10, style: .continuous))
        .padding(.horizontal, 4)
        
    }
}

struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView(user: .init(id: 0,
                              name: "Britt Baker",
                              email: "dmd@aew.com",
                              company: .init(name: "AEW")))
    }
}
