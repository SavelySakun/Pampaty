import Foundation

class TeamsVM {
  
  var items: [CellViewModelProtocol] = []
  
  init() {
    let nameItem = CellItemVM(title: "Арбузики")
    self.items.append(nameItem)
  }
  
}
