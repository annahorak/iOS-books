//
//  ViewController.swift
//  Books
//
//  Created by Anna Horak on 21.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var criminalBooks: [Book] = [
        Book(title: "\"Rzeka tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "Historia trzech przyjaciół z dzieciństwa, których losy ponownie po kilkunastu latach splata morderstwo córki jednego z nich. Najlepsza powieść kryminalna, w której wątek morderstwa jest tylko pretekstem do zadania bardzo ważnych pytań o ludzką naturę i istotę zła. Rozbudowane rysy psychologiczne bohaterów, mocna i zapadająca w pamięci historia, która nie pozwala przejść obojętnie. Lehane między wierszami zdaje się zadawać pytanie: gdzie leży granica pomiędzy napastnikiem, ofiarą i wskazuje palcem problem społecznego napiętnowania.", price: 36.90, image: "rzeka_tajemnic"),
        Book(title: "\"Czerwony smok\"", author: "Thomas Harris", category: "kryminalne", description: "Pierwsza powieść Harrisa, w której pojawia się genialny zabójca Hannibal Lecter. Jest on jednak postacią drugoplanową, a głównym antagonistą jest morderca o pseudonimie Zębowa Wróżka. Powstrzymania psychopaty podejmuje się agent FBI, który kilka lat wcześniej aresztował właśnie Lectera. Barwni i niejednoznaczni bohaterowie oraz mocna, trzymająca w napięciu, a przy tym wyjątkowo brutalna historia sprawiają, że Harris zasłużył aby znaleźć się na tak wysokim miejscu w naszym zestawieniu.", price: 29.90, image: "czerwony_smok"),
        Book(title: "\"Wyspa tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "Historia zakładu psychiatrycznego, do którego skierowani zostają dwaj agenci FBI, aby rozwiązać zagadkę zniknięcia jednej z pacjentek. Niestety po przybyciu na miejsce, pracowników i pensjonariuszy spowija zmowa milczenia, a do wyspy zbliża się huragan odcinając drogę ucieczki. Lehane operuje prostym językiem, aby ukazać bardzo złożoną i głęboką historię. Umiejętnie łączy elementy dreszczowca i kryminału, oddając w nasze ręce prawdziwy majstersztyk od początku do końca trzymający w napięciu.", price: 39.90, image: "wyspa_tajemnic"),
        Book(title: "\"Mężczyźni, którzy  nienawidzą kobiet\"", author: "Stieg Larsson", category: "kryminalne", description: "W 1966 roku bez śladu znika Harriet Vanger. Zakrojone jednak na szeroką skalę śledztwo nie przynosi rezultatu. Kilkadziesiąt lat po tych wydarzeniach dziennikarz śledczy Mikael Mlomkvist ponownie wraca do tej sprawy. To co udaje mu się odkryć przechodzi wszelkie pojęcie.  Mężczyźni, którzy nienawidzą kobiet to rozbudowany do granic, wielowątkowy i wielopokoleniowy kryminał o nienawiści, zbrodni oraz złu mieszkającym w człowieku. Larsson pyta nas - czy w cywilizowanym kraju może dochodzić do podobnych sytuacji, gdzie ludzie wykształceni, obyci i na poziomie, mogą w swoim wnętrzu kryć prawdziwą bestię, którą od czasu do czasu spuszcza się ze smyczy? ", price: 69.90, image: "mezczyzni"),
        Book(title: "\"Zaginiona dziewczyna\"", author: "Gillian Flynn", category: "kryminalne", description: "Nick i Amy obchodzą piątą rocznicę ślubu. Jednak zanim zdążą ją uczcić Amy znika z domu. Podejrzenie pada na Nicka, który dziwnie się zachowuje.  Prowadzone śledztwo coraz bardziej udowadnia jego winę. On sam zaś za wszelką cenę chce dowieźć swojej niewinności. Świetnie poprowadzona akcja, będąca swojego rodzaju grą z czytelnikiem. Zachwyca misternie budowana intryga, a autor udowadnia, że punkt widzenia zależy od punktu siedzenia.", price: 49.90, image: "zaginiona_dziewczyna"),
        Book(title: "\"Pan Mercedes\"", author: "Stephen King", category: "kryminalne", description: "Fabuła powieści Kinga zaczyna się  od bardzo mocnego uderzenia. W grupę ludzi oczekujących na targi pracy wjeżdża szaleniec Mercedesem, zabijając kilkanaście osób. Śledztwo niestety utyka w martwym punkcie. Po kilku miesiącach morderca nawiązuje kontakt z policjantem prowadzącym tę sprawę, który przebywa na emeryturze myśląc o samobójstwie. Sprawnie poprowadzony kryminał, z galerią barwnych postaci i rewelacyjnie poprowadzoną grą pomiędzy dwoma oponentami. King udowadnia, że w klimatach kryminalnych też czuje się bardzo bobrze. ", price: 69.90, image: "pan_mercedes"),
        Book(title: "\"Morderstwo w Orient Expressie\"", author: "Agatha Christie", category: "kryminalne", description: "Po rozwiązaniu sprawy kryminalnej w Azji Herkules Poirot wraca do Europy. Pociąg Orient Express, którym podróżuje, grzęźnie w zaspie śnieżnej. W nocy w niewyjaśnionych okolicznościach ginie jeden z pasażerów. Detektyw Poirot rozpoczyna dochodzenie. Sztandarowa powieść detektywistyczna, z której  do dzisiaj czerpie wenę wielu pisarzy tego gatunku. Intrygujące postacie, trudna zagadka i mnóstwo zaskakujących zwrotów akcji sprawia, że nie bez kozery autorkę nazywają królową kryminału.", price: 29.90, image: "morderstwo"),
        ]
    
    
    var romanceBooks: [Book] = [
        Book(title: "\"Rzeka tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "Historia trzech przyjaciół z dzieciństwa, których losy ponownie po kilkunastu latach splata morderstwo córki jednego z nich. Najlepsza powieść kryminalna, w której wątek morderstwa jest tylko pretekstem do zadania bardzo ważnych pytań o ludzką naturę i istotę zła. Rozbudowane rysy psychologiczne bohaterów, mocna i zapadająca w pamięci historia, która nie pozwala przejść obojętnie. Lehane między wierszami zdaje się zadawać pytanie: gdzie leży granica pomiędzy napastnikiem, ofiarą i wskazuje palcem problem społecznego napiętnowania.", price: 36.90, image: "rzeka_tajemnic")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kryminalne" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.books = criminalBooks
        }
        if segue.identifier == "romanse" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.books = romanceBooks
        }
    }
}

