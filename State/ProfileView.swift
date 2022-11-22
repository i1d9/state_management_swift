//
//  ProfileView.swift
//  State
//
//  Created by Ian Nalyanya on 22/11/2022.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var user : User
    var body: some View {

        VStack{
            Text(user.first_name)
            Text(user.second_name)
            Text(user.email)
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    
    static var previews: some View {

        ProfileView().environmentObject(User())
    }
}
