//
//  TableViewControllerTienda.swift
//  LZ Tienda
//
//  Created by Laboratorio11 UNAM-11 on 27/02/23.
//

import UIKit

struct Tienda{
    var foto:UIImage
    var marca:String
    var producto:String
    var precio:String
    var cantidad:String
    
}

class TableViewControllerTienda: UITableViewController {
    var arregloTienda:[Tienda]=[
    Tienda(foto: UIImage(named: "cervezas")!, marca: "Victoria", producto:("Cerveza") , precio: "$20", cantidad: "1pz"),
    Tienda(foto: UIImage(named: "Botanas")!, marca: "Sabritas", producto: "papas", precio: "$16", cantidad: "1pz"),
    Tienda(foto: UIImage(named: "Frutas")!, marca: "/", producto: "Manzana", precio: "$45", cantidad: "1k"),
    Tienda(foto: UIImage(named:"Pan y galletas")!, marca: "Bimbo", producto: "Panquè de Nuez", precio: "$38", cantidad: "1pz"),
    

    ]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arregloTienda.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdita", for: indexPath) as!TableViewCellProductos
        let celdaReciclada=arregloTienda[indexPath.row]
        
        cell.imgProducto.image=celdaReciclada.foto
        cell.lblPrecio.text=celdaReciclada.precio
        cell.IblMarca.text=celdaReciclada.marca
        cell.lblProducto.text=celdaReciclada.producto
        cell.lblCantidad.text=celdaReciclada.cantidad

        // Configure the cell...

        return cell
    }
    
     

    
    // Override to support conditional editing of the table view.
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
        
    }

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
