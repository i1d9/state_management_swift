//
//  ContentView.swift
//  State
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    
    @State  var counter : Int = 0
    
    @State private var isPresented = false

    var body: some View {
        VStack {
            
           ProfileView()
           Counter(counter: $counter)
            
            Button(action: {
                
                isPresented.toggle()
            }){
                Text("Edit Profile")
            }
        }.fullScreenCover(isPresented: $isPresented, content: EditProfileView.init).environmentObject(User())
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
