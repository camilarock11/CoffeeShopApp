import SwiftUI

struct CustomizeOrderView: View {
    let item: MenuItem
    @State private var selectedSize = "Medium"
    @State private var selectedMilk = "Whole Milk"
    @State private var selectedExtras: [String] = []

    private let sizes = ["Small", "Medium", "Large"]
    private let milkOptions = ["Whole Milk", "Skim Milk", "Almond Milk", "Oat Milk"]
    private let extraOptions = ["Extra Shot", "Whipped Cream", "Caramel", "Chocolate"]

    var body: some View {
        VStack(spacing: 20) {
            Image("Espresso1")
                .resizable()
                .frame(width: 500, height: 500)
                .padding(.top, -200)

                HStack {
                    Text(item.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.top)
                        .padding(.leading, 8)

                    Spacer()

                    // Estrelas e nota
                    HStack(spacing: 4) {
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                        Text(String(format: " 4 . 3"))
                            .font(.title2)
                            .foregroundColor(.secondary)
                    }
                    .padding(.top, 10)
                    .padding(.trailing, 16)
            }

            Spacer()

            Picker("Size", selection: $selectedSize) {
                ForEach(sizes, id: \.self) { size in
                    Text(size).tag(size)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            .padding(.horizontal)

            Picker("Milk", selection: $selectedMilk) {
                ForEach(milkOptions, id: \.self) { milk in
                    Text(milk).tag(milk)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding(.horizontal)

            Text("Extras").font(.headline)

            ForEach(extraOptions, id: \.self) { extra in
                Toggle(extra, isOn: .constant(false))
            }

            Spacer()

            NavigationLink(destination: PaymentView(item: item)) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Price")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)

                        Text("$ 7.40")
                            .padding(.top, -2)
                            .font(.title3)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .padding(.leading, -80)

                    Text("Buy Now")
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.brown)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .padding(.leading, -100)
                }
            }
        }
        .padding()
        .navigationBarHidden(true)
    }
}

#Preview {
    CustomizeOrderView(item: MenuItem(name: "Cappuccino", description: "Cappuccino1", price: 7.4, image: "Cappuccino1"))
}
