//
//  InfoViewController.swift
//  TouchSport
//
//  Created by Treinamento on 19/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var labelNomeSport: UILabel!
    @IBOutlet weak var imageSport: UIImageView!
    @IBOutlet weak var labelInformacoes: UILabel!
    @IBOutlet weak var textInfo: UILabel!
    @IBOutlet weak var labelModalidade: UILabel!
    @IBOutlet weak var textMod: UILabel!
    @IBOutlet weak var labelBeneficios: UILabel!
    @IBOutlet weak var texBen: UILabel!
//    @IBOutlet weak var labelRegras: UILabel!
//    @IBOutlet weak var textReg: UILabel!
    @IBOutlet weak var labelFotos: UILabel!
    @IBOutlet weak var imageEsportes: UIImageView!
    
    var esporteSelecionado: Esportes?
    
    override func viewDidLoad() {
        
        self.scrollView.delegate = self
        //self.scrollView.alwaysBounceHorizontal = false
        
        
        super.viewDidLoad()
        self.labelNomeSport.text = esporteSelecionado?.nome
        self.imageSport.image = esporteSelecionado?.image
        self.textInfo.text = esporteSelecionado?.informacoes
        self.textMod.text = esporteSelecionado!.modalidades?[0]
        self.texBen.text = esporteSelecionado!.beneficios?[0]
        self.imageEsportes.image = esporteSelecionado?.image2

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
