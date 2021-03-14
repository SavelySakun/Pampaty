import UIKit

class GameSettingsVM {
  let tableSections: [TableSection] = [
    
    TableSection(title: "Команды", items: [
      NumberOfTeamsCellVM(),
      NumberOfTeamsCellVM()
    ]),
    
    TableSection(title: "Игра", items: [
      NumberOfTeamsCellVM(),
      NumberOfTeamsCellVM()
    ]),
    
    TableSection(title: "Фишки", items: [
      NumberOfTeamsCellVM()
    ])
  ]
}
