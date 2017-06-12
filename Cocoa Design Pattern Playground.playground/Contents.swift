import UIKit
import Foundation

class DataSourceExample: NSObject, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.subtitle, reuseIdentifier: "")
        let description = "Row \(indexPath.row) Section \(indexPath.section)"
        cell.textLabel?.text = "It's a cell!"
        cell.detailTextLabel?.text = description
        
        return cell
    }
}

let tableView = UITableView(frame: CGRect(x: 0, y: 0, width: 320, height: 480))
let dataSource = DataSourceExample()
tableView.dataSource = dataSource
tableView.reloadData()
tableView
