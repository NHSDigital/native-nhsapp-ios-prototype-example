
import SwiftUI
import NHSDesignSystem

struct ContentView: View {
    var body: some View {
        NavigationStack {

            ScrollView {
                
                HomeMenu(accessibilityLabel: "Health services") {
                  HomeMenuItem(title: "Prescriptions", systemImage: "pills.fill") { }
                  HomeMenuItem(title: "Vaccinations", systemImage: "syringe.fill") { }
                }
            }
            .padding()
            .background(.nhsGrey5)
            
        }
        
    }
}

#Preview {
    ContentView()
}
