//
//  ContentView.swift
//  API Practice
//
//  Created by Justin on 5/3/23.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = UsersViewModel()
    
    var body: some View {
        
        NavigationView {
            ZStack {
                
                if vm.isRefreshing {
                    ProgressView()
                } else {
                    List {
                        ForEach(vm.users) { user in
                            
                            UsersView(user: user)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .navigationTitle("Users")
                    
                }
            }
            .onAppear(perform: vm.fetchUsers)
            .alert(isPresented: $vm.hasError, error: vm.error) {
                Button(action: vm.fetchUsers) { Text("Retry") }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
