//
//  EditProfileView.swift
//  State
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

struct EditProfileView: View {
    
    @EnvironmentObject var user : User
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        
        VStack{
            TextField("First name", text: $user.first_name)
            TextField("Second name", text: $user.second_name)
            TextField("Email", text: $user.email).keyboardType(.emailAddress)
            
            Button(action: {

                presentationMode.wrappedValue.dismiss()
            }){
                HStack{
                    Image(systemName: "checkmark")
                    Text("Done")

                }
                
            }
        }.padding()
    }
}

struct EditProfileView_Previews: PreviewProvider {
    static var previews: some View {
        EditProfileView().environmentObject(User())
    }
}
