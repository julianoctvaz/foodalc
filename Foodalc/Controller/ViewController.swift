//
//  ViewController.swift
//  Foodalc
//  Created by Juliano Vaz on 02/03/20.
//  Copyright © 2020 Juliano Vaz. All rights reserved.
//

import UIKit

struct ingrediente: Decodable{
    let nome: String
    let qtd: Int
    let unidade: Float
    let unidadeDeMedida: String
}

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //--------------------------------------------- only variables, arrays and outlet -----------------------------------------
    
    @IBOutlet var qtdDePessoasTextFild: UITextField!
    @IBOutlet var qtdDePorcoes: UITextField!
    @IBOutlet var saidaPorcoesPorPessoas: UILabel!
    @IBOutlet var sizePicker: UIPickerView!
    @IBOutlet var viewEstoque: UIView!
    @IBOutlet var viewReceitas: UIView!
    @IBOutlet var viewPrincipal: UIView!
    
    var ingrediente1 = Ingrediente(nome: "F de T", qtd: 1, unidade: 2.0, unidadeDeMedida: "kg")
    var ingrendiente2 = Ingrediente(nome: "L de C", qtd: 200, unidade: 2.0, unidadeDeMedida: "ml")
    
    var receitasParaPicker: [String] = ["Bolo Fecilidade", "Torta de Limao", "Trufa"]
    
    
    //--------------------------------------------- only pickerView ---------------------------------------------------
    //obg ter essa funcao ao usar pickerview
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        /*    if component == 0 {
         return "Componente específico"
         //se eu tivesse outras colunas eu teria que fazer o row, por exemplo, dentro desse bloco
         }
         else{*/
        
        //        if row == 0{
        //            return "Bolo Felicidade"
        //        }
        //        else if row == 1{
        //            return "Torta de Limao"
        //        }
        //        else{
        //            return "Trufa"
        //        }
        
        return  receitasParaPicker[row]
        //aqui pode usar return array[row]
    }
    
    //    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
    //
    //        let pickerLabel = UILabel()
    //        pickerLabel.font = UIFont(name:"Helvetica", size: 7)
    //
    //        return pickerLabel
    //    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    //obg ter essa funcao ao usar pickerview
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 3
    }
    //representativo da tela em si, toda parte de tela vai ter um arquivo como esse cxhamdo view controller.
    
    //--------------------------------------------- initializer  ----------------------------------------------------
    
    /// Do any additional setup after loading the view.
    override func viewDidLoad() {
        print("Hello Mundo") //para dar sorte
        super.viewDidLoad()
        sizePicker.dataSource = self
        sizePicker.delegate = self
        sizePicker.isHidden = true
        viewPrincipal.isHidden = false
        
        //        var BoloFelicidade: Receita!
        //        BoloFelicidade = Receita ()
        //        BoloFelicidade.nome = "Bolo Felicidade"
        //        BoloFelicidade.modoDePreparo = "Faca a b c d e"
        //        BoloFelicidade.ingrediantes.append(3, "Leite em Po", "kg")
        //        BoloFelicidade.ingrediantes.append(2, "Macarrao Integral", "kg")
        //        BoloFelicidade.ingrediantes.append(4, "Leite de Coco", "ml")
        
        
    }
    
    //--------------------------------------------- only to get estatic data -------------------------------------
    
    //    fileprivate func getData(){
    //        let url = "https://github.com/julianoctvaz/foodalc/blob/master/Foodalc/estoque.json/"
    //        let urlObj = URL(string: url)
    //        URLSession.shared.dataTask(with: urlObj!) {(data, response, error) in
    //
    //            do {
    //                  Decode data to object
    //                var ingredientes = try JSONDecoder().decode([ingrediente].self, from: data!)
    //
    //                for ingrediente in ingredientes{
    //                    print("Nome: \(ingrediente.nome)")
    //                    print("Quantidade: \(ingrediente.qtd)")
    //                    print("Unidade: \(ingrediente.unidade)")
    //                    print("Unidade de medida: \(ingrediente.unidadeDeMedida)")
    //                }
    //
    //            }catch{
    //                print("We get an error")
    //            }
    //        }.resume()
    //  }
    
    //--------------------------------------------- only IBActions --------------------------------------------------
    
    @IBAction func calculaAgora() {
        calcularPorcoesPorPessoa()
        sizePicker.isHidden = false
    }
    
    @IBAction func mostraReceitas(_ sender: Any) {
        
    }
    
    @IBAction func estoqueButton() {
        viewPrincipal.isHidden = true
        viewEstoque.isHidden = false
        viewReceitas.isHidden = true
    }
    
    @IBAction func principalButton() {
        viewPrincipal.isHidden = false
        viewEstoque.isHidden = true
        viewReceitas.isHidden = true
    }
    
    @IBAction func receitasButton() {
        viewPrincipal.isHidden = true
        viewEstoque.isHidden = true
        viewReceitas.isHidden = false
    }
    
    
    //--------------------------------------------- only func -----------------------------------------------------
    
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
    
    
}
//--------------------------------------------- end --------------------------------------------------------------
