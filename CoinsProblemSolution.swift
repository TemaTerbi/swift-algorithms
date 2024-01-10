//MARK: - Searching less way for getting amount from coins
let coins = [1, 2, 5]
let amount = 11

func getExchange(coins: [Int], amount: Int) {
    let timer = ParkBenchTimer()
    var array = Array.SubSequence(repeating: amount + 1, count: amount + 1)
    array[0] = 0
    
    for el in array.indices {
        for coin in coins {
            if el - coin >= 0 {
                let value = array[el - coin]
                
                if value + 1 < amount + 1 {
                    array[el] = value + 1
                }
            }
        }
    }

    print("Yor less way is \(array[amount])")
}

getExchange(coins: coins, amount: amount)
