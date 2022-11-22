//
//  Counter.swift
//  State
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

struct Counter: View {
    @Binding var counter : Int
    var body: some View {
       

            

            HStack{
                Button(action: {
                    
                    counter += 1
                }) {
                    Image(systemName: "plus")
                }.padding()
                Text("\(counter)")
                Button(action: {
                    counter -= 1
                }) {
                    Image(systemName: "minus")
                }.padding()
                
                
            }
        
    }
}

struct Counter_Previews: PreviewProvider {
    static var previews: some View {
        Counter(counter: .constant(0))
    }
}
