//
//  defaultTableViewCell.swift
//  Mvvm
//
//  Created by Pranav on 24/02/22.
//

import UIKit

class defaultTableViewCell: UITableViewCell {

    @IBOutlet var txtlabel : UILabel!
    
    static let cellid = "defaultTableViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "defaultTableViewCell", bundle: nil)
    }
    
    public func configure(with viewModel: CellViewModel) {
        
        txtlabel.text = "\(viewModel.firstName) \(viewModel.lastName) - \(viewModel.species)"
    }
    
    
}
