//
//  ViewController.swift
//  Books
//
//  Created by Anna Horak on 21.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var criminalBooks: [LibraryObject] = [
        LibraryObject(title: "\"Rzeka tajemnic\"", author: "Dennis Lehane", category: "Kryminały", description: "Historia trzech przyjaciół z dzieciństwa, których losy ponownie po kilkunastu latach splata morderstwo córki jednego z nich. Najlepsza powieść kryminalna, w której wątek morderstwa jest tylko pretekstem do zadania bardzo ważnych pytań o ludzką naturę i istotę zła.", price: 36.90, image: "rzeka_tajemnic", musicPlay: ""),
        LibraryObject(title: "\"Czerwony smok\"", author: "Thomas Harris", category: "kryminalne", description: "Pierwsza powieść Harrisa, w której pojawia się genialny zabójca Hannibal Lecter.", price: 29.90, image: "czerwony_smok",musicPlay: ""),
        LibraryObject(title: "\"Wyspa tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "Historia zakładu psychiatrycznego, do którego skierowani zostają dwaj agenci FBI, aby rozwiązać zagadkę zniknięcia jednej z pacjentek. Niestety po przybyciu na miejsce.", price: 39.90, image: "wyspa_tajemnic",musicPlay: ""),
        LibraryObject(title: "\"Mężczyźni, którzy  nienawidzą kobiet\"", author: "Stieg Larsson", category: "kryminalne", description: "W 1966 roku bez śladu znika Harriet Vanger. Zakrojone jednak na szeroką skalę śledztwo nie przynosi rezultatu. Kilkadziesiąt lat po tych wydarzeniach dziennikarz śledczy Mikael Mlomkvist ponownie wraca do tej sprawy. ", price: 69.90, image: "mezczyzni",musicPlay: ""),
        LibraryObject(title: "\"Zaginiona dziewczyna\"", author: "Gillian Flynn", category: "kryminalne", description: "Nick i Amy obchodzą piątą rocznicę ślubu. Jednak zanim zdążą ją uczcić Amy znika z domu. Podejrzenie pada na Nicka, który dziwnie się zachowuje.  Prowadzone śledztwo coraz bardziej udowadnia jego winę. ", price: 49.90, image: "zaginiona_dziewczyna",musicPlay: ""),
        LibraryObject(title: "\"Pan Mercedes\"", author: "Stephen King", category: "kryminalne", description: "Fabuła powieści Kinga zaczyna się  od bardzo mocnego uderzenia. W grupę ludzi oczekujących na targi pracy wjeżdża szaleniec Mercedesem, zabijając kilkanaście osób. Śledztwo niestety utyka w martwym punkcie. ", price: 69.90, image: "pan_mercedes",musicPlay: ""),
        LibraryObject(title: "\"Morderstwo w Orient Expressie\"", author: "Agatha Christie", category: "kryminalne", description: "Po rozwiązaniu sprawy kryminalnej w Azji Herkules Poirot wraca do Europy. Pociąg Orient Express, którym podróżuje, grzęźnie w zaspie śnieżnej. ", price: 29.90, image: "morderstwo",musicPlay: "")
        ]
    
    
    var romanceBooks: [LibraryObject] = [
        LibraryObject(title: "\"Zanim się pojawiłeś\"", author: "Jojo Moyes", category: "Romanse", description: "Co robisz, jeśli chcesz uszczęśliwić osobę, którą kochasz, ale wiesz, że to złamie twoje serce? Jest wiele rzeczy, które wie ekscentryczna dwudziestosześciolatka Lou Clark.", price: 26.90, image: "rzeka_tajemnic" , musicPlay: ""),
        LibraryObject(title: "\"It Ends with Us\"", author: "Colleen Hoover", category: "romans", description: "Czasem te osoby, które najmocniej nas kochają, potrafią też najmocniej ranić. \n Lily Bloom zawsze płynie pod prąd. Nic dziwnego, że otworzyła kwiaciarnię dla osób, które… nie lubią kwiatów, i prowadzi ją z pasją i sukcesami. Gdy poznaje przystojnego lekarza Ryle’a Kincaida i rodzi się między nimi wzajemna fascynacja, Lily jest przekonana, że jej życie nie może być już lepsze. ", price: 56.90, image: "it_ends", musicPlay: ""),
        LibraryObject(title: "\"Conviction\"", author: "Michaels Corinne", category: "romans", description: "Znakomita powieść dla fanek Colleen Hoover. Poruszająca historia, którą pokochały tysiące czytelniczek! \n Jeżeli myślisz, że zakończenie \"Consolation\" zwalało z nóg, przeczytaj \"Conviction\" i przekonaj się, że Corinne Michaels jest w stanie dostarczyć jeszcze większych emocji i zaskoczeń!", price: 49.90, image: "conviction", musicPlay: ""),
        LibraryObject(title: "\"Confess\"", author: "Hoover Colleen", category: "romans", description: "Niewypowiedziane pragnienia, bolesna przeszłość i głęboko skrywane grzechy są dla Owena największą inspiracją. Utalentowany malarz kolekcjonuje anonimowe wyznania i przenosi je na płótno, zamieniając słowa w obrazy, w których ukrywa też własne tajemnice. \n Auburn pojawia się w jego galerii akurat wtedy, gdy Owen szuka asystentki. ", price: 69.90, image: "confess", musicPlay: ""),
        LibraryObject(title: "\"Bez uczuć\"", author: "Sheridan Mia", category: "romans", description: "Nieszczęśliwa miłość do Lydii odebrała Broganowi wszystko. Ciężko zraniony staje się wyrachowany i skupia się na swoim biznesie i na zemście. Bo miłość wcale nie jest cierpliwa ani łaskawa. \n Życie Lydii wyglądało kiedyś zupełnie inaczej – była bogata, bezpieczna i kochana.", price: 39.90, image: "bez_uczuc", musicPlay: ""),
        LibraryObject(title: "\"Love Line\"", author: "Reichter Nina", category: "romans", description: "Matthew Hansen - przystojny młody psycholog - doradza kobietom, jak zbudować satysfakcjonujący je związek i nie pozwolić sobą manipulować. \n Jest twórcą popularnej internetowej audycji LOVE Line, a jego charyzma  i celne rady przyciągają miliony słuchaczek.", price: 32.90, image: "love_line", musicPlay: ""),
        LibraryObject(title: "\"Salon sukni ślubnych\"", author: "Hauck Rachel", category: "romans", description: "Dwie główne bohaterki i dwie niezwykłe historie o pracy, spełnianiu marzeń, zauroczeniu i miłości – tej chorej, obezwładniającej, niszczącej od wewnątrz, i tej prawdziwej, niosącej spełnienie. No i zaskakujące zakończenie… \n Początek lat trzydziestych XX wieku.", price: 48.90, image: "salon", musicPlay: ""),
        LibraryObject(title: "\"Bez szans\"", author: "Sheridan Mia", category: "romans", description: "W upadającym górskim miasteczku Kyland i Ten zakochują się w sobie wbrew rozsądkowi i na przekór surowej rzeczywistości. Kyland marzy tylko o tym, by przetrwać. Zaciska zęby i robi wszystko, by nie pokonała go bieda i samotność.", price: 35.49, image: "bez_szans", musicPlay: ""),
        LibraryObject(title: "\"W blasku reflektorów\"", author: "Roberts Nora", category: "romans", description: "Kłamstwa i tajemnice. Dziennikarz Dylan Crosby zamierza napisać biografię słynnego kierowcy rajdowego, Chucka Rockwella, który zginął tragicznie w wypadku. Umawia się na serię rozmów z wdową po Rockwellu, Abby. Pełen uprzedzeń, spodziewa się spotkać bogatą i bezwzględną kobietę. Tymczasem Abby bardzo odbiega od jego wyobrażeń. ", price: 35.49, image: "blask", musicPlay: ""),
        LibraryObject(title: "\"Tajemnice diamentów\"", author: "Galen Shana", category: "romans", description: "Miał idealnie uporządkowane życie… William, książę Pelham, lubi swoje zorganizowane, przewidywalne życie. Dlaczego więc staje się nagle obiektem ataków? Plotkarska prasa przypisuje mu romans z Juliette, jedną z najpiękniejszych i najbardziej tajemniczych londyńskich kurtyzan. ", price: 45.99, image: "tajemnice", musicPlay: ""),
        LibraryObject(title: "\"Gwiazdy fortuny \"", author: "Roberts Nora", category: "romans", description: "Sasha Riggs maluje niesamowite obrazy, pełne dziwacznych postaci i koszmarów, które dręczą ją w snach. Pod wpływem swoich wizji udaje się na grecką wyspę Korfu. Spotyka tu pięcioro młodych ludzi obdarzonych nadprzyrodzonymi zdolnościami. Muszą połączyć siły, by uratować świat przed zagrażającym mu niebezpieczeństwem.", price: 55.49, image: "gwiazdy", musicPlay: "")
    ]
    
    var biographyBooks: [LibraryObject] = [
        LibraryObject(title: "\"Kukuczka\"", author: "Kortko Dariusz, Pietraszewski Marcin", category: "Biografie", description: "– Logicznie rzecz biorąc, nie powinienem z tobą jechać, bo wszyscy ludzie koło ciebie giną – powiedział Jerzemu Kukuczce w oczy jeden z kolegów alpinistów. Upiorne fatum czy faktycznie był odpowiedzialny za śmierć, która niemal zawsze podczas jego wypraw zbierała żniwo?", price: 36.90, image: "kukuczka", musicPlay: ""),
        LibraryObject(title: "\" Biografia Anny Przybylskiej \"", author: "Kubicki Grzegorz, Drzewicki Maciej", category: "biografia", description: "Łobuziara z urodą nastolatki i głosem Jana Himilsbacha, w zasadzie nie musiała niczego grać. Pojawiła się w polskim kinie znikąd i od razu stała się fenomenem: przed kamerą bardziej naturalna od szkolonych aktorek, utożsamiała „polski sen lat 90.” – była idealną dziewczyną z sąsiedztwa, która trafiła na okładki magazynów i do telewizji w szczytowych godzinach oglądalności.", price: 39.90, image: "ania", musicPlay: ""),
        LibraryObject(title: "\"Himalaistki\"", author: "Sepioło Mariusz", category: "biografia", description: "Polki budowały legendę światowego himalaizmu. To one były pierwsze. Ich życiorysy to gotowe scenariusze filmowe. Wanda Rutkiewicz nieraz spojrzała śmierci w oczy. Dobrosława Miodowicz-Wolf umarła, pomagając innym. Halina Kruger-Syrokomska zasnęła w namiocie na wysokości kilku tysięcy metrów i nigdy się nie obudziła.", price: 59.90, image: "himalaistki", musicPlay: ""),
        LibraryObject(title: "\"Dziewczęta z Auschwitz\"", author: "Winnik Sylwia", category: "biografia", description: "Przejmujące wspomnienia dwunastu kobiet, które przeżyły piekło niemieckiego nazistowskiego obozu zagłady Auschwitz-Birkenau. Książka jest efektem rozmów autorki z każdą z bohaterek.", price: 36.99, image: "auschwitz", musicPlay: ""),
        LibraryObject(title: "\"Wszystko jest po coś\"", author: "Piróg Michał", category: "biografia", description: "Michał Piróg, niezwykle popularny i lubiany tancerz, na podstawie swoich życiowych doświadczeń, i tych złych, i tych dobrych, stworzył katalog trzynastu zasad, (to jego ulubiona liczba) które pomogły mu stać się tym, kim jest i osiągać sukcesy.", price: 19.55, image: "pirog", musicPlay: ""),
        LibraryObject(title: "\"Byłbym zapomniał...\"", author: "Pazura Cezary", category: "biografia", description: "O sobie z pazurem! Znacie Cezarego Pazurę. Wiecie, jak barwnie i żywo potrafi mówić. Usiądźcie więc wygodnie w fotelu, otwórzcie książkę i dowiedzcie się, co chce wam powiedzieć o sobie sam aktor. ", price: 27.93, image: "pazura", musicPlay: "")
    ]
    
    var fantasyBooks: [LibraryObject] = [
        LibraryObject(title: "\"To\"", author: "King Stephen", category: "Horrory", description: "Najbardziej przerażająca ze wszystkich powieści Stephena Kinga! Ciebie tez pochłonie TO… Derry w stanie Maine to miejsce ledwie widoczne na mapie. Dochodzi tu do wyjątkowej eskalacji zbrodni, okrutnych morderstw, gwałtów i tajemniczych wypadków. W kanałach miasteczka zalęgło się To.", price: 37.99, image: "to", musicPlay: ""),
        LibraryObject(title: "\"Śpiące królewny\"", author: "King Owen, King Stephen", category: "horror", description: "W przyszłości tak realistycznej i bliskiej, że mogłaby być współczesnością, coś dziwnego dzieje się z kobietami, które zasypiają: szczelnie owija je zwiewna substancja przypominająca kokon. Gdy ktoś je budzi, gdy obrastający je materiał zostaje naruszony bądź zerwany, uśpione kobiety wpadają w dziką furię i stają się szaleńczo agresywne.", price: 40.99, image: "spiace_krolewny", musicPlay: ""),
        LibraryObject(title: "\"Wiedźmin. Miecz przeznaczenia \"", author: "Sapkowski Andrzej", category: "fantasy", description: "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę!", price: 36.99, image: "miecz", musicPlay: ""),
        LibraryObject(title: "\"Raport z Północy\"", author: "Pilipiuk Andrzej", category: "fantasy", description: "Podróż do wnętrza Wielkiego Grafomana, a jednocześnie wędrówka po jego ukochanej Skandynawii. Ta książka jest poniekąd książką podróżniczą – jednak w przeciwieństwie do książek prawdziwych podróżników nie opisuję miejsc egzotycznych ani choćby trudno dostępnych. ", price: 32.99, image: "raport", musicPlay: ""),
        LibraryObject(title: "\"Wiedźmin. Sezon burz\"", author: "Sapkowski Andrzej", category: "fantasy", description: "Oto nowy Sapkowski i nowy wiedźmin. Mistrz polskiej fantastyki znowu zaskakuje. „Sezon burz” nie opowiada bowiem o młodzieńczych latach białowłosego zabójcy potworów ani o jego losach po śmierci/nieśmierci kończącej ostatni tom sagi.", price: 35.45, image: "sezon_burz", musicPlay: ""),
        LibraryObject(title: "\"Pieśń Lodu i Ognia. Gra o tron \"", author: "Martin George R. R.", category: "fantasy", description: "W kolejnej książce fantasy Martina Georgea R. R. przenosimy się w Zachodnie Krainy. Po ośmiu tysiącach lat zapisanej historii widmo wojen i katastrofy nieustannie wisi nad osadami ludzkimi.", price: 40.49, image: "gra_o_tron", musicPlay: ""),
        LibraryObject(title: "\"Wiedźmin. Krew elfów.\"", author: "Sapkowski Andrzej", category: "fantasy", description: "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Tako rzecze Ithlinne, elfia wieszczka i uzdrowicielka: Drżyjcie, albowiem nadchodzi Niszczyciel Narodów. Stratują waszą ziemię i sznurem ją podzielą.", price: 36.99, image: "krew_elfow", musicPlay: ""),
        LibraryObject(title: "\"Pieśń Lodu i Ognia. Starcie królów \"", author: "Martin George R. R.", category: "fantasy", description: "Powieść „Starcie królów” to drugi tom cyklu Pieśń Lodu i Ognia. Tym razem George R. R. Martin opowiada historię pełną intryg, zdrad i politycznych rozgrywek o niezwykłej sile oddziaływania. Dopóki żył król Robert, Żelazny Tron jednoczył Zachodnie Królestwa.", price: 40.49, image: "starcie_krolow", musicPlay: ""),
        LibraryObject(title: "\"Sztorm stulecia\"", author: "King Stephen", category: "horror", description: "Little Tall, mała wyspa u wybrzeży stanu Maine, przygotowuje się do nadejścia zimowej burzy, którą meteorologowie zapowiadają jako sztorm stulecia. Wraz z pierwszymi płatkami śniegu na wyspie zjawia się Andre Linoge i morduje jedną z najstarszych jej mieszkanek, Marthę Clarendon.", price: 33.60, image: "sztorm", musicPlay: ""),
        LibraryObject(title: "\"Siódma dusza\"", author: "Wardziak Andrzej", category: "horror", description: "Grupa znajomych postanawia spędzić piątkowy wieczór w wiekowej Wkrótce jednak okazuje się, że dom skrywa wiele tajemnic. Młodzi ludzie nie są w nim sami. Jeden z nich okalecza się niemal śmiertelnie. Wszystkich ogarnia lęk, który pogłębia panujący chaos.", price: 14.95, image: "siodma_dusza", musicPlay: ""),
        LibraryObject(title: "\"Stukostrachy\"", author: "King Stephen", category: "horror", description: "Haven, idylliczne miasteczko w stanie Maine, przeobraża się w niebezpieczną pułapkę dla każdego nowego przybysza. Diabelską przemianę wywołuje na pozór błahe wydarzenie - Bobbi Anderson potyka się w lesie o dziwny metalowy przedmiot i bezskutecznie stara się go wykopać.", price: 12.99, image: "stukostrachy", musicPlay: ""),
        LibraryObject(title: "\"Nowy dom na wyrębach\"", author: "Darda Stefan", category: "horror", description: "Minęło kilka miesięcy od dnia, w którym Hubert Kosmala po raz ostatni odwiedził Wyręby, jednak wydarzenia, które miały tam miejsce na początku 1996 roku, zaczynają coraz mocniej odbijać się na jego życiu prywatnym i zawodowym.", price: 24.43, image: "nowy_dom", musicPlay: ""),
        LibraryObject(title: "\"Pod kopułą\"", author: "King Stephen", category: "horror", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. Pole wpływa niekorzystnie na środowisko, a ludzi powoli ogarnia panika…", price: 39.20, image: "pod_kopula", musicPlay: "")
    ]
    
    var music: [LibraryObject] = [
        LibraryObject(title: "Christmas", author: "Michael Buble", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 26.99, image: "christmas", musicPlay: "buble"),
        LibraryObject(title: "Take Me To The Alley", author: "Porter Gregory", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 19.99, image: "take_me_to", musicPlay: "porter"),
        LibraryObject(title: "Born To Die", author: "Lana Del Rey", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 21.59, image: "lana", musicPlay: "lana"),
        LibraryObject(title: "Listen Without Prejudice", author: "Michael George", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 58.59, image: "george", musicPlay: "george"),
        LibraryObject(title: "Egzotyka", author: "Quebonafide", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 35.55, image: "quebo", musicPlay: "buble"),
        LibraryObject(title: "Revival", author: "Eminem", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 57.99, image: "eminem", musicPlay: "buble"),
        LibraryObject(title: "Jestem tu nowa", author: "Anna Wyszkoni", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 35.99, image: "wyszkoni", musicPlay: "buble"),
        LibraryObject(title: "Despacito & Mis Grandes Exitos", author: "Luis Fonsi", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 31.49, image: "despacito", musicPlay: "buble"),
        LibraryObject(title: "This Is Acting", author: "Sia", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 22.99, image: "sia", musicPlay: "buble"),
        LibraryObject(title: "Joanne", author: "Lady Gaga", category: "", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. ", price: 28.99, image: "gaga", musicPlay: "buble"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "kryminalne" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.resources = criminalBooks
        }
        if segue.identifier == "romans" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.resources = romanceBooks
        }
        if segue.identifier == "biografie" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.resources = biographyBooks
        }
        if segue.identifier == "horrory" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.resources = fantasyBooks
        }
        if segue.identifier == "muzyka" {
            let destinationController = segue.destination as! MusicTableViewController
            destinationController.music = music
        }
        
        
    }
}

