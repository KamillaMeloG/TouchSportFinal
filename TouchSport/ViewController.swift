//
//  ViewController.swift
//  TouchSport
//
//  Created by Treinamento on 12/05/18.
//  Copyright © 2018 Treinamento. All rights reserved.
//

import UIKit

class Esportes{
    
    var nome : String
    var informacoes : String?
    var modalidades : [String]?
    var beneficios : [String]?
    var image: UIImage?
    var image2: UIImage?
    
    init(nome: String, informacoes: String, modalidades: [String], beneficios: [String], imagem: UIImage, imagem2: UIImage){
        self.nome = nome
        self.informacoes = informacoes
        self.modalidades = modalidades
        self.beneficios = beneficios
        self.image = imagem
        self.image2 = imagem2
        
    }
    
   
}

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UIScrollViewDelegate {
   
    @IBOutlet weak var SportsCollection: UICollectionView!
    
    let arrayOfSports: [Esportes] = [Esportes.init(nome: "Futebol",
                      informacoes: "Jogado entre dois times de 11 jogadores cada um e um árbitro que se ocupa da correta aplicação das normas. O objetivo do jogo é deslocar uma bola através do campo para colocá-la dentro da baliza adversária, ação que se denomina gol, A equipe que marca mais gols ao término da partida é a vencedora",
                      modalidades: ["Futebol de salão, Futebol de areia, Futebol de pântano, Futebol paraolímpico, Futebol de Pântano, Futebol Paraolímpico e Showbol"],
                      beneficios: ["Diminuição da gordura corporal, Manutenção do peso, Aumento da força e da massa muscular, Aumento da densidade óssea, Melhora da resistência cardiovascular,Elimina o estresse e a ansiedade, Diminui a frequência cardíaca em repouso, Estimula a circulação sanguínea"],
                      imagem: UIImage(named: "Futebol")!,
                      imagem2: UIImage(named: "futebol1")!),

        Esportes.init(nome: "Tênis",
                      informacoes: "Participam no jogo dois oponentes ou duas duplas de oponentes, podendo ser mistas (homens e mulheres) ou não. A quadra é dividida em duas meia-quadras por uma rede, e o objetivo do jogo é rebater uma pequena bola para além da rede (para a meia-quadra adversária) com ajuda de uma raquete",
                      modalidades: ["Há três tipos principais de quadras: Quadra de argila/terra batida (saibro), Quadra de grama, Hardcourt (piso duro: cimento, borracha sintética, carpete ou lama asfáltica."],
                      beneficios: ["Sistema cardiovascular, Resistência muscular, Perca peso, Concentração, Coordenação, Previne e combate doenças, Favorece o bem-estar mental, Exposição ao sol."],
                      imagem: UIImage(named: "Tenis")!,
                     imagem2: UIImage(named: "tenis1")!),


        Esportes.init(nome: "Corrida",
                      informacoes: "Competição de velocidade ou resistência. Os competidores tentam completar uma determinada tarefa no menor período de tempo. Envolve tradicionalmente percorrer alguma distância, mas pode se referir a qualquer tarefa em que o tempo/velocidade se aplique.",
                      modalidades: ["Corrida de Pista, Corrida de Rua, Corrida Cross, Country, Corrida em Montanha, Corrida Trail"],
                      beneficios: ["Acelera o metabolismo, Reduz a gordura corporal, Melhora a qualidade do sono, Fortalece os ossos e os músculo, Diminui o estresse e a ansiedade, Reduz o risco de mortalidade, Previne contra doenças cardíacas, Espanta o mau-humor"],
                      imagem: UIImage(named: "Corrida")!,
                      imagem2: UIImage(named: "corrida1")!),

        Esportes.init(nome: "Surf",
                      informacoes: "Uma prática desportiva efetuada na superfície da água, frequentemente considerada parte do grupo de atividades denominadas esportes de aventura, cuja proficiência é verificada pelo grau de dificuldade dos movimentos executados pelo surfista ao deslizar em pé na prancha de surfe, aproveitando a onda que quebra quando se aproxima da praia ou costa.",
                      modalidades: ["Shortboard, longboard, bodyboard, bodysurf, skimboard, kneeboard"],
                      beneficios: ["Ajuda a reduzir o stress, Melhora o Equilíbrio, Melhora a coordenação motora, Melhora a agilidade, Trabalho de cardio garantido, Melhora a parte muscular, Contacto direto com a natureza"],
                      imagem: UIImage(named: "Surf")!,
                      imagem2: UIImage(named: "surf1")!),

        Esportes.init(nome: "Skate",
                      informacoes: "Esporte que consiste em deslizar sobre o solo e obstáculos equilibrando-se numa prancha, executam-se manobras de baixos a altos graus de dificuldade.",
                      modalidades: ["Street, FreeStyle, Half-Pipe, Bowl, Big Air, Downhill, Slide, Downhill Stand-up, Downhill Slide, Minirrampas"],
                      beneficios: ["Fortalece as articulações, Fortalece as articulações, Ajuda a tonificar os músculos, Melhora a saúde, cardiovascular, Alivia o estresse, Queima calorias, Melhora concentração"],
                      imagem: UIImage(named: "Skate")!,
                      imagem2: UIImage(named: "skate1")!),

        Esportes.init(nome: "Karatê",
                      informacoes: "Caratê ou Karaté é uma arte marcial de autodefesa originaria do Japão. A palavra caratê significa “mão vazia”. É uma arte marcial que ensina golpes para a autodefesa sem armas de qualquer espécie.",
                      modalidades: ["Goju Ryu, Shito Ryu, Shoryn Ryu, Shotokan, Wado Ryu, Uechi Ryu, Kyokushinkai, Kenyu Ryu"],
                      beneficios: ["Desenvolve a capacidade cardiovascular e a respiração, Aumenta a coordenação motora e os reflexos, Melhora a concentração, Ajuda a corrigir a postura, Ajuda a melhorar a autoestima e o controle emocional, É defesa pessoal, Possui uma filosofia rica, com base no respeito e disciplina, Desenvolve habilidades interpessoais e de liderança, ensina a importância da persistência para alcançar seus objetivos"],
                      imagem: UIImage(named: "Karate")!,
                      imagem2: UIImage(named: "karate1")!),

        Esportes.init(nome: "Ciclismo",
                      informacoes: "O ciclismo é um dos esportes mais praticados no Brasil atualmente, principalmente por sua versatilidade, já que essa atividade é indicada para todo tipo de pessoa que tenha condições físicas e motoras para pedalar.",
                      modalidades: ["ciclismo de estrada, mountain bike (Cross country, Freeride Downhill, Trip Trail),BMX (BICICROSS)"],
                      beneficios: ["Aumento da aptidão cardiovascular, Aumento da força muscular e flexibilidade, Melhoria da mobilidade articular, Diminuição dos níveis de estresse, Melhor postura e coordenação, Ossos fortalecidos, Diminuição dos níveis de gordura corporal, Prevenção ou tratamento da doença, Ansiedade e depressão reduzida."],
                      imagem: UIImage(named: "Ciclismo")!,
                      imagem2: UIImage(named: "ciclismo1")!),
                      

        Esportes.init(nome: "Handebol",
                      informacoes: "Duas equipes de sete jogadores disputam as partidas cujo objetivo é marcar mais gols que o adversário. Cada time conta com cinco reservas que podem entrar em quadra a qualquer momento",
                      modalidades: ["Modalidade de grama, areia e quadra."],
                      beneficios: ["A prática do handebol melhora a capacidade cardiorrespiratória, desenvolve os músculos, trabalha a coordenação motora, desenvolve a sociabilidade, traz benefícios para o bem-estar psíquico e exercita a agilidade e a objetividade da mente."],
                      imagem: UIImage(named: "Handebol")!,
                      imagem2: UIImage(named: "handebol1")!),

        Esportes.init(nome: "Hipismo",
                      informacoes: "A arte de montar a cavalo que compreende todas as práticas desportivas que envolvam este animal. Sendo assim, é o maior esporte feito com cavalos no mundo inteiro. Dentre elas envolvem as diferentes provas, como saltos, adestramento, corridas, atrelagem, e o pólo. Algumas constituem mesmo o pentatlo moderno, que é também disputado nas Olimpíadas.",
                      modalidades: ["Salto,  adestramento, concurso completo de equitação,  volteio,  enduro, atrelagem, três tambores, 6 balizas, rédeas, laço, polo"],
                      beneficios: ["Estimula o funcionamento do aparelho digestivo, melhora o tônus muscular, estimula todo o sistema neurológico, equilibra o ritmo dos batimentos cardíacos, ajuda na reabilitação do sistema respiratório, sendo importante também em tratamentos de alergia e asma."],
                      imagem: UIImage(named: "Hipismo")!,
                      imagem2: UIImage(named: "hipismo1")!),
    ]
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.arrayOfSports.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.SportsCollection.dequeueReusableCell(withReuseIdentifier: "Menu", for: indexPath) as! SportsCollectionViewCell
        
        cell.sportImage.image = self.arrayOfSports[indexPath.row].image
        cell.nomeEsporte.text = self.arrayOfSports[indexPath.row].nome
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "EsporteSegue", sender: self.arrayOfSports[indexPath.row])
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "EsporteSegue" {
            let content = sender as! Esportes
            print(content.nome)
            
            let vc = segue.destination as! InfoViewController
            
            vc.esporteSelecionado = content
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        SportsCollection.delegate = self
        SportsCollection.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

