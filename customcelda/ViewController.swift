//
//  ViewController.swift
//  customcelda
//
//  Created by Manuel Zegarra on 10/09/15.
//  Copyright (c) 2015 M-Sonic. All rights reserved.
//

import UIKit

class CustomTableViewCell:UITableViewCell{
    


    @IBOutlet weak var lblCodigo: UILabel!
    
    @IBOutlet weak var lblDescripcion: UILabel!
    
    @IBOutlet weak var lblEspacios: UILabel!
    
    
    func loadItem(#operacion:Operacion){
        lblCodigo.text = operacion.codigo;
        lblDescripcion.text = operacion.descripcion;
        lblEspacios.text = "\(operacion.espacios)";
        
    }
    
}

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var operaciones :[Operacion] = [Operacion]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        
        var nib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        tableView.registerNib(nib, forCellReuseIdentifier: "customCell")
        
        var operacion1 = Operacion();
        operacion1.codigo="001";
        operacion1.descripcion="descripcion 001";
        operacion1.espacios=6;
        operaciones.append(operacion1)

        var operacion2 = Operacion();
        operacion2.codigo="002";
        operacion2.descripcion="descripcion 002";
        operacion2.espacios=8;
        operaciones.append(operacion2)
        
        var operacion3 = Operacion();
        operacion3.codigo="003";
        operacion3.descripcion="descripcion 003";
        operacion3.espacios=81;
        operaciones.append(operacion3)
        
        
        var operacion4 = Operacion();
        operacion4.codigo="004";
        operacion4.descripcion="descripcion 003";
        operacion4.espacios=120;
        operaciones.append(operacion4)
        
        
        var operacion5 = Operacion();
        operacion5.codigo="005";
        operacion5.descripcion="descripcion 005";
        operacion5.espacios=10;
        operaciones.append(operacion5)
        
        
        
        var operacion6 = Operacion();
        operacion6.codigo="006";
        operacion6.descripcion="descripcion 006";
        operacion6.espacios=101;
        operaciones.append(operacion6)
        
        
        var operacion7 = Operacion();
        operacion7.codigo="007";
        operacion7.descripcion="descripcion 007";
        operacion7.espacios=101;
        operaciones.append(operacion7)
        
    }

  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return operaciones.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell : CustomTableViewCell = self.tableView.dequeueReusableCellWithIdentifier("customCell") as! CustomTableViewCell
        
        cell.loadItem(operacion: self.operaciones[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        var renglon = indexPath.row;
        var section = indexPath.section
        
        println("renglon \(renglon)")
        println("seccion \(section)")
        
        
        if renglon%2 == 0{
            self.performSegueWithIdentifier("sgUno", sender:renglon )
        }else{
            self.performSegueWithIdentifier("sgDos", sender:renglon )
        }
        
        
    }
    
    //when setting and text view, you probably want a quite big table view cell so you have to do the following
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 60
        }
        return 60 //the height of your table view cell, the default value is 44
    }
    

    

}

