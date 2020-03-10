//
//  ViewController.swift
//  Foodalc
//
//  Created by Juliano Vaz on 02/03/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController { //representativo da tela em si, toda parte de tela vai ter um arquivo como esse cxhamdo view controller.
    
 
    
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
///Comentarios sobre documentacao de receita
class Receita {
    var ingredientes: [Ingrediente]
    var nome: String = ""
    var modoDePreparo: String = ""
    
    init(ingredientes: Array<Ingrediente>, nome: String, modoDePreparo: String) {
        self.ingredientes = ingredientes
        self.nome = nome
        self.modoDePreparo = modoDePreparo
        
    }
    

    
}
class Ingrediente {
    var qtd: Int = 0
    var nome: String = ""
    var unidadeDeMedida: String = ""
    
    init(qtd: Int, nome: String, unidadeDeMedida: String) {
        self.qtd = qtd
        self.nome = nome
        self.unidadeDeMedida = unidadeDeMedida
    }
}

