//
//  LocationSearchActivationView.swift
//  UberClone
//
//  Created by Nguyễn Bách on 17/07/2023.
//

import SwiftUI

struct LocationSearchActivationView: View {
    var body: some View {
        HStack{
            
            Rectangle()
                .fill(Color.black)
                .frame(width: 8,height: 8)
                .padding(.horizontal)
            
            Text("Where To ?")
                .foregroundColor(Color(.darkGray))
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width - 64, height: 50)
        .background(
            Rectangle()
                .fill(Color.white)
                .cornerRadius(0.01 * UIScreen.main.bounds.width) 
                .shadow(color: .black, radius: 5)
        )

    }
}

struct LocationSearchActivationView_Previews: PreviewProvider {
    static var previews: some View {
        LocationSearchActivationView()
    }
}
