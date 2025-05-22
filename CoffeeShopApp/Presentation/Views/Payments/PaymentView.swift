import SwiftUI

struct PaymentView: View {
    let item: MenuItem
    @State private var paymentMethod = "Credit Card"
    private let paymentMethods = ["Credit Card", "Debit Card", "Apple Pay", "Cash"]

    var body: some View {
        VStack(spacing: 20) {
            Text("Payment")
                .font(.largeTitle)
                .fontWeight(.bold)

            Text("Total: $\(item.price, specifier: "%.2f")")
                .font(.title2)
                .fontWeight(.semibold)

            Picker("Payment Method", selection: $paymentMethod) {
                ForEach(paymentMethods, id: \.self) { method in
                    Text(method).tag(method)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.horizontal)

            Button("Complete Payment") {
                // Payment logic
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.brown)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
    }
}

#Preview {
    PaymentView(item: MenuItem(name: "Teste", description: "Teste Cafe", price: 7.4, image: "Cappuccino1"))
}
