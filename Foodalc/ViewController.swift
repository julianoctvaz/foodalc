//
//  ViewController.swift
//  Foodalc
//
//  Created by Juliano Vaz on 02/03/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource {
    //obg ter essa funcao ao usar pickerview
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //obg ter essa funcao ao usar pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    //representativo da tela em si, toda parte de tela vai ter um arquivo como esse cxhamdo view controller.
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        var BoloFelicidade: Receita!
        //        BoloFelicidade = Receita ()
        //        BoloFelicidade.nome = "Bolo Felicidade"
        //        BoloFelicidade.modoDePreparo = "Faca a b c d e"
        //        BoloFelicidade.ingrediantes.append(3, "Leite em Po", "kg")
        //        BoloFelicidade.ingrediantes.append(2, "Macarrao Integral", "kg")
        //        BoloFelicidade.ingrediantes.append(4, "Leite de Coco", "ml")
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var qtdDePessoasTextFild: UITextField!
    @IBOutlet var qtdDePorcoes: UITextField!
    @IBOutlet var saidaPorcoesPorPessoas: UILabel!
    
    @IBAction func calculaAgora() {
        calcularPorcoesPorPessoa()
    }
    
    func calcularPorcoesPorPessoa(){
        
        let qtdPessoasLendo = qtdDePessoasTextFild.text!
        let qtdPorcoesLendo = qtdDePorcoes.text!
        
        let qtdPessoas:Int = Int(qtdPessoasLendo)!
        let qtdPorcoes:Int = Int(qtdPorcoesLendo)!
        
        
        saidaPorcoesPorPessoas.text = String(qtdPessoas * qtdPorcoes)
        //multiplica quantidade de porcoes por pessoa.
    }
    
    func calcularEstoquePorReceita(){
        //subtrai valores que existem na receita pelo valor que esta na receita.
    }
    
    func calcularReceitaEscolhidaPorQuantidadeEpessoas(){
        //faz um multiplicacao entre calcularPorcoesPorPessoa e calcularEstoquePorReceita, e depois subtraia do pegarEstoque.
    }
    
    func mostrarReceitasDisponiveis(){
        //mostra as receitas que estão disponiveis para serem feitas dados os calculos e disponibilidade de estoque.
    }
    
    @IBAction func mostraReceitas(_ sender: Any) {
        
        print("Hello Mundo")
        
    }
    
    
}

    
    
    



