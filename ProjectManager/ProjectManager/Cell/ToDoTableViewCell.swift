//
//  ToDoTableViewCell.swift
//  ProjectManager
//
//  Created by James, Jay, Ian on 2021/06/29.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    @IBOutlet private weak var titleLabel: UILabel!
    @IBOutlet private weak var contentLabel: UILabel!
    @IBOutlet private weak var dateLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

extension ToDoTableViewCell: CellConfigurable {
    func configure(tasks: [Task], rowAt row: Int) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        titleLabel.text = tasks[row].title
        contentLabel.text = tasks[row].content
//        self.dateLabel.text = dateFormatter.string(from: tasks[row].deadlineDate)
        dateLabel.text = tasks[row].deadlineDate
    }
}