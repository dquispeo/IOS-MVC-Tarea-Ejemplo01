//
//  CrearTareaViewController.swift
//  Tarea2
//
//  Created by mbtec22 on 6/6/20.
//  Copyright © 2020 dquispeo. All rights reserved.
//

import UIKit

class CrearTareaViewController: UIViewController {

    @IBOutlet weak var txtNombreTarea: UITextField!
    @IBOutlet weak var swImportante: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func agregar(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        
        let tarea = Tarea(context: context)
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        
    navigationController!.popViewController(animated: true)
    }
    
}
