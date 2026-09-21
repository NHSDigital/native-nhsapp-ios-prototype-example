
import SwiftUI
import NHSDesignSystem

struct PrescriptionsView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                Title(systemImage: "pills.fill")
                CardActionGroup(header: "GP surgery", actions: [
                    CardAction(title: "Request a repeat prescription") { },
                    CardAction(title: "Check the progress of prescriptions") { },
                    CardAction(title: "Medicines record") { },
                    CardAction(title: "Request an emergency prescription") { },
                    CardAction(title: "Your chosen pharmacy", subtitle: "Boots") { }
                ])

                CardActionGroup(header: "Hospital", actions: [
                    CardAction(title: "Hospital and other medicines") { }
                ])
            }
            .padding()
        }
        .background(.nhsBackground)
        .nhsTitle("Prescriptions")
    }
}

#Preview {
    PrescriptionsView()
}
