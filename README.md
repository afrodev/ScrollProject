# ScrollProject

# Ideia
- Fazer qualquer view ser scrollável sem dificuldades

# Preparação:
- Temos uma **UITableViewController**: Utilizaremos para deixar a **ViewController** Scrollável;
- Temos uma **ViewController**: é a view que queremos deixar scrollável;
- Temos uma **TBTableView**: é uma TableView que temos dentro da **ViewController**;

# Como foi feito:
- Na **UITableViewController** foi adicionado uma `ViewController.view` no header dela. Essa `view` 
vem de um **ViewController** no storyboard (precisa ser iniciada em alguma classe para ser colocada na memória)
- Com isso essa **ViewController** fica scrollável
- Caso tenha outra tableview dentro dessa view é necessário garantir que a **ViewController** tenha o tamanho correto,
  levando em conta o tamanho da view completa e o `tableView.contentSize`.


