import UIKit

class GameSettingsVM {
  var tableSections: [TableSection] = [
    
    TableSection(title: "Команды", items: [
      NumberOfTeamsCellVM(),
      TeamNamesCellVM()
    ]),
    
    TableSection(title: "Игра", items: [
      NumberOfTeamsCellVM(),
      RoundNumbersCellVM()
    ]),
    
    TableSection(title: "Фишки", items: [
      ModificationCellVM()
    ])
  ]
}
