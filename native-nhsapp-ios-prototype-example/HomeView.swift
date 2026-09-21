
import SwiftUI
import NHSDesignSystem

struct HomeView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {
                    ProfileCard(name: "Kevin Francis", nhsNumber: "999 123 4567", action: { })

                    HomeMenu(accessibilityLabel: "Health services", items: [
                        HomeMenuItem(title: "Prescriptions", systemImage: "pills.fill") { },
                        HomeMenuItem(title: "Appointments", systemImage: "calendar.badge.clock") { },
                        HomeMenuItem(title: "Test results", systemImage: "testtube.2") { },
                        HomeMenuItem(title: "Vaccinations", systemImage: "syringe.fill") { },
                        HomeMenuItem(title: "Health conditions", systemImage: "heart.fill") { },
                        HomeMenuItem(title: "Documents", systemImage: "doc.text.fill") { }
                    ])

                    CardActionGroup(header: "NHS information and support", style: .secondary, actions: [
                        CardAction(title: "Check your symptoms using 111 Online", style: .plain, action: { }),
                        CardAction(title: "Health A-Z", style: .plain, action: { }),
                        CardAction(title: "Find NHS services near you", style: .plain, action: { })
                    ])

                    CampaignCard(
                        image: Image(systemName: "photo.fill"),
                        title: "Organ donors save lives",
                        subtitle: "Take 2 minutes to check and confirm your organ donation decision",
                        action: { }
                    )

                    Banner(
                        title: "Tell us what you think about the NHS App",
                        actionLabel: "Give feedback",
                        style: .solid(background: .nhsPaleGreen, accent: .nhsDarkGreen),
                        systemImage: "ellipsis.bubble.fill",
                        accessibilityHint: "Opens in web browser",
                        action: { }
                    )

                    Button("App help", systemImage: "questionmark.circle.fill") { }
                        .buttonStyle(.nhsSecondary.fitted)
                }
            }
            .padding()
            .background(.nhsGrey5)
            .toolbar {
                NHSLogoToolbarItem()
                MessagesToolbarItem(unreadCount: 3) { }
            }
        }
    }
}

#Preview {
    HomeView()
}
