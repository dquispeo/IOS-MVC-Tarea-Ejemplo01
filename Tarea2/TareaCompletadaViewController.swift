//
//  TareaCompletadaViewController.swift
//  Tarea2
//
//  Created by mbtec22 on 6/6/20.
//  Copyright © 2020 dquispeo. All rights reserved.
//

import UIKit

class TareaCompletadaViewController: UIViewController {

    var tarea : Tarea? = nil
    
    @IBOutlet weak var tareaLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if tarea!.importante{
            tareaLabel.text = "\(tarea!.nombre!)"
        }else{
            tareaLabel.text = tarea!.nombre!
        }
    }
    
    @IBAction func completarTarea(_ sender: Any) {
        let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
        context.delete(tarea!)
        (UIApplication.shared.delegate as! AppDelegate).saveContext()
        navigationController!.popViewController(animated: true)
    }
    
}
