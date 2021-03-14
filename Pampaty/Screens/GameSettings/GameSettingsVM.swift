import UIKit

class GameSettingsVM {
  let tableSections: [TableSection] = [
    
    TableSection(title: "Команды", items: [
      CellItem(title: "Количество", subtitle: nil, vm: SettingsNumberOfTeamsCellVM()),
      CellItem(title: "Названия команд", subtitle: nil, vm: SettingsNumberOfTeamsCellVM()),
    ]),
    
    TableSection(title: "Игра", items: [
      CellItem(title: "Длительность раунда, секунд", subtitle: nil, vm: SettingsNumberOfTeamsCellVM()),
      CellItem(title: "Раундов", subtitle: "Примерная длительность игры составит N минут.", vm: SettingsNumberOfTeamsCellVM())
    ]),
    
    TableSection(title: "Фишки", items: [
      CellItem(title: "Модификаторы", subtitle: "Случайные условия для команд, усложняющие прохождение раунда.", vm: SettingsNumberOfTeamsCellVM())
    ])
  ]
}
