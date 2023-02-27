//
//  TableViewCellProductos.swift
//  LZ Tienda
//
//  Created by Laboratorio11 UNAM-11 on 27/02/23.
//

import UIKit

class TableViewCellProductos: UITableViewCell {

    @IBOutlet weak var imgProducto: UIImageView!
    
    @IBOutlet weak var IblMarca: UILabel!
    
    @IBOutlet weak var lblProducto: UILabel!
    
    @IBOutlet weak var lblPrecio: UILabel!
    
    @IBOutlet weak var lblCantidad: UILabel!
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
