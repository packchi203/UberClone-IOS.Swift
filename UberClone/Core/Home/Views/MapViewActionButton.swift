//
//  MapViewActionButton.swift
//  UberClone
//
//  Created by Nguyễn Bách on 17/07/2023.
//

import SwiftUI

struct MapViewActionButton: View {
    @Binding var mapState: MapViewState
    @EnvironmentObject var  viewModel: LocationSearchViewModel
    
    var body: some View {
        Button{
            withAnimation(.spring()){
                acctionForState(mapState)
            }
            
        } label: {
            Image(systemName: imageNameForState(mapState))
                .font(.title2)
                .foregroundColor(.black)
                .padding()
                .background(.white)
                .clipShape(Circle())
                .shadow(color: .black, radius: 6)
            
        }
        .frame(maxWidth: .infinity,alignment: .leading)
    }
    func acctionForState(_ state: MapViewState){
        switch state{
        case .noInput:
            print("DEBUG: No input")
        case .searchingForLocation:
            mapState = .noInput
        case .localtionSelected, .polylineAdded:
            mapState = .noInput
            viewModel.selectedUberLocation = nil
        }
    }
    func imageNameForState(_ state: MapViewState) -> String{
        switch state{
        case .noInput:
             return "line.3.horizontal"
        case .searchingForLocation, .localtionSelected, .polylineAdded:
            return "arrow.left"
        default:
            return "line.3.horizontal"
        }
    }
}
    


struct MapViewActionButton_Previews: PreviewProvider {
    static var previews: some View {
        MapViewActionButton(mapState: .constant(.noInput))
    }
}
