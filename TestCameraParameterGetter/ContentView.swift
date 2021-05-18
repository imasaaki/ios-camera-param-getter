//
//  ContentView.swift
//  TestCameraParameterGetter
//
//  Created by iyoda masaaki on 2021/04/13.
//

import SwiftUI

struct ContentView: View {
    @State var text: String = "press button to get info"
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: true) {
                Text(self.text)
                    .multilineTextAlignment(.leading)
                    .frame(maxWidth: .infinity)
            }
            .frame(maxWidth: .infinity, maxHeight: 460.0)
            
            Button(action: self.getInfo, label: {
                Text("getInfo")
            }).foregroundColor(.white)
            .padding(5)
            .background(Color(red: 0.86, green: 0.45, blue: 0.03))
            .cornerRadius(10)
        }
    }
    
    func getInfo(){
        self.text = ""
        getPlatformInfo()
    }
    
    func getPlatformInfo(){
        let os = ProcessInfo().operatingSystemVersion
        self.text.append("OS Version: " + String(os.majorVersion) + "." + String(os.minorVersion) + "." + String(os.patchVersion) + "\n")
        
         self.text.append(UIDevice.modelName + "\n")
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
