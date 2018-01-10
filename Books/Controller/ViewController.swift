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
        Book(title: "\"Morderstwo w Orient Expressie\"", author: "Agatha Christie", category: "kryminalne", description: "Po rozwiązaniu sprawy kryminalnej w Azji Herkules Poirot wraca do Europy. Pociąg Orient Express, którym podróżuje, grzęźnie w zaspie śnieżnej. W nocy w niewyjaśnionych okolicznościach ginie jeden z pasażerów. Detektyw Poirot rozpoczyna dochodzenie. Sztandarowa powieść detektywistyczna, z której  do dzisiaj czerpie wenę wielu pisarzy tego gatunku. Intrygujące postacie, trudna zagadka i mnóstwo zaskakujących zwrotów akcji sprawia, że nie bez kozery autorkę nazywają królową kryminału.", price: 29.90, image: "morderstwo")
        ]
    
    
    var romanceBooks: [Book] = [
        Book(title: "\"Zanim się pojawiłeś\"", author: "Jojo Moyes", category: "romans", description: "Co robisz, jeśli chcesz uszczęśliwić osobę, którą kochasz, ale wiesz, że to złamie twoje serce? Jest wiele rzeczy, które wie ekscentryczna dwudziestosześciolatka Lou Clark. Wie, ile kroków dzieli przystanek autobusowy od jej domu. Wie, że lubi pracować w kawiarni Bułka z Masłem i że chyba nie kocha swojego chłopaka Patricka. Lou nie wie jednak, że za chwilę straci pracę i zostanie opiekunką młodego, bogatego bankiera, którego losy całkowicie zmieniły się na skutek tragicznego zdarzenia sprzed dwóch lat. \n Will Traynor wie, że wypadek motocyklowy odebrał mu chęć do życia. Wszystko wydaje mu się teraz błahe i pozbawione kolorów. Wie też, w jaki sposób to przerwać. Nie ma jednak pojęcia, że znajomość z Lou wywróci jego świat do góry nogami i odmieni ich oboje na zawsze.", price: 26.90, image: "rzeka_tajemnic"),
        Book(title: "\"It Ends with Us\"", author: "Colleen Hoover", category: "romans", description: "Czasem te osoby, które najmocniej nas kochają, potrafią też najmocniej ranić. \n Lily Bloom zawsze płynie pod prąd. Nic dziwnego, że otworzyła kwiaciarnię dla osób, które… nie lubią kwiatów, i prowadzi ją z pasją i sukcesami. Gdy poznaje przystojnego lekarza Ryle’a Kincaida i rodzi się między nimi wzajemna fascynacja, Lily jest przekonana, że jej życie nie może być już lepsze. \n Tak mogłaby skończyć się ta historia. Jednak niektóre rzeczy są zbyt piękne, by mogły trwać wiecznie. To, co się kryje za idealnym związkiem Lily i Ryle’a, jest w stanie dostrzec jedynie Atlas Corrigan, dawny przyjaciel Lily. Kiedyś ona była dla niego bezpieczną przystanią, teraz sama potrzebuje takiej pomocy. Nie zawsze jesteśmy bowiem dość odważni, by stanąć twarzą w twarz z prawdą… Szczególnie gdy przynosi ona tylko cierpienie.", price: 56.90, image: "it_ends"),
        Book(title: "\"Conviction\"", author: "Michaels Corinne", category: "romans", description: "Znakomita powieść dla fanek Colleen Hoover. Poruszająca historia, którą pokochały tysiące czytelniczek! \n Jeżeli myślisz, że zakończenie \"Consolation\" zwalało z nóg, przeczytaj \"Conviction\" i przekonaj się, że Corinne Michaels jest w stanie dostarczyć jeszcze większych emocji i zaskoczeń! Druga część duetu \"Consolation\" rozdziera serce, wzrusza i zachwyca, czyniąc tę literacką przygodę niezapomnianą i zapierającą dech w piersi. \n Po raz kolejny autorka złamie ci serce. Ale czy poskłada je na nowo?", price: 49.90, image: "conviction"),
        Book(title: "\"Confess\"", author: "Hoover Colleen", category: "romans", description: "Niewypowiedziane pragnienia, bolesna przeszłość i głęboko skrywane grzechy są dla Owena największą inspiracją. Utalentowany malarz kolekcjonuje anonimowe wyznania i przenosi je na płótno, zamieniając słowa w obrazy, w których ukrywa też własne tajemnice. \n Auburn pojawia się w jego galerii akurat wtedy, gdy Owen szuka asystentki. Dziewczyna od kilku lat walczy o odzyskanie normalnego życia i desperacko potrzebuje pieniędzy. Zakochanie się w przystojnym malarzu nie jest częścią jej planu, ale przekorne przeznaczenie stawia na swoim. Wydaje się, że Owen jest dla niej szansą na znalezienie ukojenia i wsparcia, a ona dla niego natchnieniem i nowym kolorem w autoportrecie. \n Wzajemne uczucie dodaje życiu barw, jednak tajemnice zaczynają tworzyć rysy na ich związku. Auburn odkrywa, że przeszłość ukochanego może odebrać jej to, co dla niej najważniejsze. Głos serca podpowiada jednak, że miłość wymaga największych poświęceń. ", price: 69.90, image: "confess"),
        Book(title: "\"Bez uczuć\"", author: "Sheridan Mia", category: "romans", description: "Nieszczęśliwa miłość do Lydii odebrała Broganowi wszystko. Ciężko zraniony staje się wyrachowany i skupia się na swoim biznesie i na zemście. Bo miłość wcale nie jest cierpliwa ani łaskawa. \n Życie Lydii wyglądało kiedyś zupełnie inaczej – była bogata, bezpieczna i kochana. Teraz fortuna się od niej odwróciła. Rodzinna firma znalazła się na skraju bankructwa, lecz Lydia zrobi wszytko, by ją uratować. Gdy na jaw stopniowo wychodzą tajemnice jej bliskich, dziewczyna odkrywa, że niebezpieczeństwo może grozić także jej. Nie przypuszcza jednak, że największy cios padnie z najmniej spodziewanej strony... \n Czy w sercach Lydii i Brogana na nowo zakwitnie miłość, chociaż wybrali życie bez uczuć?", price: 39.90, image: "bez_uczuc"),
        Book(title: "\"Love Line\"", author: "Reichter Nina", category: "romans", description: "Matthew Hansen - przystojny młody psycholog - doradza kobietom, jak zbudować satysfakcjonujący je związek i nie pozwolić sobą manipulować. \n Jest twórcą popularnej internetowej audycji LOVE Line, a jego charyzma  i celne rady przyciągają miliony słuchaczek. \n Zrządzeniem losu spotyka Bethany McCallum, będącą w trakcie rozwodu dziennikarkę luksusowego magazynu dla kobiet. Otrzymuje ona zlecenie napisania artykułu obnażającego metody stosowane przez hermetyczną grupę tak zwanych pick-up artists, czyli  trenerów podrywu. Nieetycznych manipulantów, którzy szkolą mężczyzn, jak zaciągnąć kobiety do łóżka. \n Ich drogi krzyżują się przy stoliku pewnej bardzo nietypowej restauracji. Wzajemne przyciąganie sprawia, że Matt postanawia zbliżyć się do Bethany. Aby to zrobić, będzie musiał podzielić się z nią swoją wiedzą.", price: 32.90, image: "love_line"),
        Book(title: "\"Salon sukni ślubnych\"", author: "Hauck Rachel", category: "romans", description: "Dwie główne bohaterki i dwie niezwykłe historie o pracy, spełnianiu marzeń, zauroczeniu i miłości – tej chorej, obezwładniającej, niszczącej od wewnątrz, i tej prawdziwej, niosącej spełnienie. No i zaskakujące zakończenie… \n Początek lat trzydziestych XX wieku. Cora Scott odważnie kroczy ścieżką kariery, prowadząc w Heart’s Bend w Tennessee salon sukien ślubnych. Panny młode przyjeżdżają aż z samego Birmingham, by dzięki Corze poczuć się wyjątkowo. Po śmierci właścicielki salon popada w ruinę. O przywrócenie go do stanu pierwotnego postanawia zawalczyć na początku XXI wieku kapitan Haley Morgan, która po odejściu ze służby w siłach powietrznych USA wraca ze złamanym sercem do rodzinnego miasteczka. Odżywają dawne wspomnienia i pewna obietnica.", price: 48.90, image: "salon"),
        Book(title: "\"Bez szans\"", author: "Sheridan Mia", category: "romans", description: "W upadającym górskim miasteczku Kyland i Ten zakochują się w sobie wbrew rozsądkowi i na przekór surowej rzeczywistości. Kyland marzy tylko o tym, by przetrwać. Zaciska zęby i robi wszystko, by nie pokonała go bieda i samotność. Nie szuka miłości. Nie zamierza też oglądać się za siebie, gdy uda mu się wyrwać z piekła, w którym przyszło mu dorastać. Dla Ten codzienność to nieustanna walka o własną godność. Zmagania z chorobą matki i ludzką nieprzychylnością wymagają od niej wyjątkowej siły. Oboje rywalizują o bilet do lepszego życia, który może otrzymać tylko jedno z nich. Ktoś odejdzie, ktoś zostanie. Czy po latach zdołają spojrzeć sobie w oczy, jeśli poświęcą miłość dla przetrwania?", price: 35.49, image: "bez_szans"),
        Book(title: "\"W blasku reflektorów\"", author: "Roberts Nora", category: "romans", description: "Kłamstwa i tajemnice. Dziennikarz Dylan Crosby zamierza napisać biografię słynnego kierowcy rajdowego, Chucka Rockwella, który zginął tragicznie w wypadku. Umawia się na serię rozmów z wdową po Rockwellu, Abby. Pełen uprzedzeń, spodziewa się spotkać bogatą i bezwzględną kobietę. Tymczasem Abby bardzo odbiega od jego wyobrażeń. Ciężko pracuje, by utrzymać siebie i dwóch synów. Z czasem zaczyna coraz chętniej opowiadać o zmarłym mężu, ale Dylan wyczuwa, że nie mówi całej prawdy. Roztańczone życie. Maddy  O’Hurley, tancerka i piosenkarka, pewnego dnia zostaje napadnięta na ulicy. Ratuje ją Reed Valentine, wpływowy właściciel firmy fonograficznej. Impulsywna artystka i pełen rezerwy biznesmen są jak ogień i woda. Mimo to wzajemna fascynacja nie pozwala im o sobie zapomnieć, chociaż każde z nich zupełnie inaczej wyobraża sobie związek dwojga ludzi.", price: 35.49, image: "blask"),
        Book(title: "\"Tajemnice diamentów\"", author: "Galen Shana", category: "romans", description: "Miał idealnie uporządkowane życie… William, książę Pelham, lubi swoje zorganizowane, przewidywalne życie. Dlaczego więc staje się nagle obiektem ataków? Plotkarska prasa przypisuje mu romans z Juliette, jedną z najpiękniejszych i najbardziej tajemniczych londyńskich kurtyzan. Poukładany świat Williama pogrąża się nieopisanym chaosie dopóki nie pojawiła się ona. Juliette, zwana Księżną Zalotów, ma u stóp najpotężniejszych arystokratów. Nie jest więc zachwycona, że książę Pelham jako jej rzekomy kochanek odstrasza od niej wielbicieli. Oboje muszą oczyścić swoje imię. A to oznacza, że odkryją swoje sekrety i narażą się na niebezpieczeństwo stokroć większe niż towarzyski skandal…", price: 45.99, image: "tajemnice"),
        Book(title: "\"Gwiazdy fortuny \"", author: "Roberts Nora", category: "romans", description: "Sasha Riggs maluje niesamowite obrazy, pełne dziwacznych postaci i koszmarów, które dręczą ją w snach. Pod wpływem swoich wizji udaje się na grecką wyspę Korfu. Spotyka tu pięcioro młodych ludzi obdarzonych nadprzyrodzonymi zdolnościami. Muszą połączyć siły, by uratować świat przed zagrażającym mu niebezpieczeństwem. Sasha próbuje walczyć ze swoim przeznaczeniem. Jej towarzysz, obdarzony czarnoksięską mocą Bran, pomaga dziewczynie uwierzyć w siebie i razem z pozostałą czwórką rozpoczynają poszukiwania gwiazdy ognia, ukrytej w podmorskiej jaskini. Tuż obok nich czai się jednak ktoś, kto uczyni wszystko, byle tylko im przeszkodzić. Rozpoczyna się wielka próba...", price: 55.49, image: "gwiazdy")
    ]
    
    var biographyBooks: [Book] = [
        Book(title: "\"Kukuczka. Opowieść o najsłynniejszym polskim himalaiście\"", author: "Kortko Dariusz, Pietraszewski Marcin", category: "biografia", description: "– Logicznie rzecz biorąc, nie powinienem z tobą jechać, bo wszyscy ludzie koło ciebie giną – powiedział Jerzemu Kukuczce w oczy jeden z kolegów alpinistów. Upiorne fatum czy faktycznie był odpowiedzialny za śmierć, która niemal zawsze podczas jego wypraw zbierała żniwo? Czy skoro już komuś nie możesz pomóc, bo odpadł od ściany lub umarł na obrzęk płuc, nie powinieneś już wchodzić na szczyt, po wielu miesiącach przygotowań będący w zasięgu ręki, spełniając swe marzenia?", price: 36.90, image: "kukuczka"),
        Book(title: "\" Biografia Anny Przybylskiej \"", author: "Kubicki Grzegorz, Drzewicki Maciej", category: "biografia", description: "Łobuziara z urodą nastolatki i głosem Jana Himilsbacha, w zasadzie nie musiała niczego grać. Pojawiła się w polskim kinie znikąd i od razu stała się fenomenem: przed kamerą bardziej naturalna od szkolonych aktorek, utożsamiała „polski sen lat 90.” – była idealną dziewczyną z sąsiedztwa, która trafiła na okładki magazynów i do telewizji w szczytowych godzinach oglądalności. Ania Przybylska została „Królową Serc” w kraju, w którym ludzie sukcesu – zwłaszcza „piękni i młodzi” – nigdy nie mają łatwo. \n Była sympatyczną Marylką ze Złotopolskich, ale też dziewczyną z rozkładówki „Playboya”. Raz mówiła, że nie ma pomysłu na życie poza aktorstwem, a innym razem – że na pierwszym miejscu jest rodzina. Długo nie miała szczęścia w miłości, lecz ciągle była zakochana. \n Spieszyła się momentami tak, jakby czuła, że to wszystko może zbyt długo nie potrwać. Jakby wiedziała, że szybko musi zawierać związek, zakładać rodzinę, urodzić dzieci, by zdążyć się jeszcze tym wszystkim nacieszyć – opowiadają w książce jej bliscy.", price: 39.90, image: "anna"),
        Book(title: "\"Himalaistki. Opowieść o kobietach, które pokonują każdą górę\"", author: "Sepioło Mariusz", category: "biografia", description: "Polki budowały legendę światowego himalaizmu. To one były pierwsze. Ich życiorysy to gotowe scenariusze filmowe. Wanda Rutkiewicz nieraz spojrzała śmierci w oczy. Dobrosława Miodowicz-Wolf umarła, pomagając innym. Halina Kruger-Syrokomska zasnęła w namiocie na wysokości kilku tysięcy metrów i nigdy się nie obudziła. Ale te, które przeżyły, mówią: góry są po to, żeby w nich żyć, a nie umierać. Przez wiele lat zmagały się z własnym środowiskiem – pełnym męskiego szowinizmu i dyskryminacji. O swoją pozycję musiały walczyć podwójnie ciężko. Niektóre za tę walkę zapłaciły podwójną cenę. Kogo kochały? Kogo kochają? Jak wygląda ich prywatność w Polsce, a jak w Himalajach? Dlaczego zostawiają domy, mężów i dzieci, by się wspinać? „Uciekają” czy „gonią”?", price: 59.90, image: "himalaistki"),
        Book(title: "\"Dziewczęta z Auschwitz\"", author: "Winnik Sylwia", category: "biografia", description: "Przejmujące wspomnienia dwunastu kobiet, które przeżyły piekło niemieckiego nazistowskiego obozu zagłady Auschwitz-Birkenau. Książka jest efektem rozmów autorki z każdą z bohaterek.", price: 36.99, image: "auschwitz"),
        Book(title: "\"Wszystko jest po coś\"", author: "Piróg Michał", category: "biografia", description: "Michał Piróg, niezwykle popularny i lubiany tancerz, na podstawie swoich życiowych doświadczeń, i tych złych, i tych dobrych, stworzył katalog trzynastu zasad, (to jego ulubiona liczba) które pomogły mu stać się tym, kim jest i osiągać sukcesy. Zasad uniwersalnych, które mogą pomóc każdemu wykorzystać życiową szansę i wydźwignąć się nawet z poważnych opresji.", price: 19.55, image: "pirog"),
        Book(title: "\"Byłbym zapomniał...\"", author: "Pazura Cezary", category: "biografia", description: "O sobie z pazurem! Znacie Cezarego Pazurę. Wiecie, jak barwnie i żywo potrafi mówić. Usiądźcie więc wygodnie w fotelu, otwórzcie książkę i dowiedzcie się, co chce wam powiedzieć o sobie sam aktor. Jego opowieść jest bardzo szczera, momentami niezwykle zabawna, czasem bardzo smutna. Jak to w życiu...", price: 27.93, image: "pazura")
    ]
    
    var fantasyBooks: [Book] = [
        Book(title: "\"To\"", author: "King Stephen", category: "horror", description: "Najbardziej przerażająca ze wszystkich powieści Stephena Kinga! Ciebie tez pochłonie TO… Derry w stanie Maine to miejsce ledwie widoczne na mapie. Dochodzi tu do wyjątkowej eskalacji zbrodni, okrutnych morderstw, gwałtów i tajemniczych wypadków. W kanałach miasteczka zalęgło się To. Bliżej nieokreślone, przybiera najróżniejsze postaci – klauna, ogromnego ptaszyska, głosu w rurach. Poluje na dzieci. Tylko dzieci potrafią dostrzec To. I dlatego właśnie one stają do walki z potworem. Mija dwadzieścia kilka lat i To powraca. Dzieci są już dorosłymi, ale muszą odnaleźć w sobie dziecięcą wiarę, lojalność i odwagę, by skutecznie stawić mu czoła.", price: 37.99, image: "to"),
        Book(title: "\"Śpiące królewny\"", author: "King Owen, King Stephen", category: "horror", description: "W przyszłości tak realistycznej i bliskiej, że mogłaby być współczesnością, coś dziwnego dzieje się z kobietami, które zasypiają: szczelnie owija je zwiewna substancja przypominająca kokon. Gdy ktoś je budzi, gdy obrastający je materiał zostaje naruszony bądź zerwany, uśpione kobiety wpadają w dziką furię i stają się szaleńczo agresywne; śpiąc, przenoszą się do innego świata − świata, w którym panuje harmonia, a konflikty są rzadkością. Tajemnicza Evie jest jednak odporna na błogosławieństwo, bądź klątwę, niezwykłej śpiączki. Czy jest medyczną anomalią, którą należy przebadać? A może demonem, którego trzeba zabić? Porzuceni mężczyźni, zdani na siebie i swoje coraz bardziej prymitywne odruchy, dzielą się na wrogie frakcje, niektórzy pragną zabić Evie, inni ją ocalić. Część wykorzystuje panujący chaos, by zemścić się na starych bądź nowych wrogach. W świecie nagle opanowanym przez mężczyzn wszyscy uciekają się do przemocy.", price: 40.99, image: "spiace_krolewny"),
        Book(title: "\"Wiedźmin. Miecz przeznaczenia \"", author: "Sapkowski Andrzej", category: "fantasy", description: "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Wiedźmiński kodeks stawia tę sprawę w sposób jednoznaczny: wiedźminowi smoka zabijać się nie godzi. To gatunek zagrożony wymarciem. Aczkolwiek w powszechnej opinii to gad najbardziej wredny. Na oszluzgi, widłogony i latawce kodeks polować przyzwala. Ale na smoki – nie.", price: 36.99, image: "miecz"),
        Book(title: "\"Raport z Północy\"", author: "Pilipiuk Andrzej", category: "fantasy", description: "Podróż do wnętrza Wielkiego Grafomana, a jednocześnie wędrówka po jego ukochanej Skandynawii. Ta książka jest poniekąd książką podróżniczą – jednak w przeciwieństwie do książek prawdziwych podróżników nie opisuję miejsc egzotycznych ani choćby trudno dostępnych. Zamiast to draństwo czytać możecie wsiąść w samolot tanich linii lotniczych i zobaczyć to wszystko na własne oczy.", price: 32.99, image: "raport"),
        Book(title: "\"Wiedźmin. Sezon burz\"", author: "Sapkowski Andrzej", category: "fantasy", description: "Oto nowy Sapkowski i nowy wiedźmin. Mistrz polskiej fantastyki znowu zaskakuje. „Sezon burz” nie opowiada bowiem o młodzieńczych latach białowłosego zabójcy potworów ani o jego losach po śmierci/nieśmierci kończącej ostatni tom sagi. „Nigdy nie mów nigdy!” W powieści pojawiają się osoby doskonale czytelnikom znane, jak wierny druh Geralta – bard i poeta Jaskier – oraz jego ukochana, zwodnicza czarodziejka Yennefer, ale na scenę wkraczają też dosłownie i w przenośni postaci z zupełnie innych bajek. Ludzie, nieludzie i magiczną sztuką wyhodowane bestie. Opowieść zaczyna się wedle reguł gatunku: od trzęsienia ziemi, a potem napięcie rośnie. Wiedźmin stacza morderczą walkę z drapieżnikiem, który żyje tylko po to, żeby zabijać, wdaje się w bójkę z rosłymi, niezbyt sympatycznymi strażniczkami miejskimi, staje przed sądem, traci swe słynne miecze i przeżywa burzliwy romans z rudowłosą pięknością, zwaną Koral. A w tle toczą się królewskie i czarodziejskie intrygi. Pobrzmiewają pioruny i szaleją burze. I tak przez 404 strony porywającej lektury.", price: 35.45, image: "sezon_burz"),
        Book(title: "\"Pieśń Lodu i Ognia. Gra o tron \"", author: "Martin George R. R.", category: "fantasy", description: "W kolejnej książce fantasy Martina Georgea R. R. przenosimy się w Zachodnie Krainy. Po ośmiu tysiącach lat zapisanej historii widmo wojen i katastrofy nieustannie wisi nad osadami ludzkimi. Zbliża się kolejna zima, lodowate wichry i mrozy wieją z północy, gdzie schroniły się wyparte przez ludzi pradawne rasy i starzy bogowie. Na szczęście dla Zachodniej Krainy wszyscy zbuntowani władcy pokonali szalonego Smoczego Króla, Aerysa Targaryena, zasiadającego na Żelaznym Tronie Zachodnich Krain. Niestety pokonany król pozostawił po sobie potomstwo, równie szalone i niebezpieczne jak on sam...", price: 40.49, image: "gra_o_tron"),
        Book(title: "\"Wiedźmin. Krew elfów.\"", author: "Sapkowski Andrzej", category: "fantasy", description: "Andrzej Sapkowski, arcymistrz światowej fantasy, zaprasza do swojego Neverlandu i przedstawia uwielbianą przez czytelników i wychwalaną przez krytykę wiedźmińską sagę! Tako rzecze Ithlinne, elfia wieszczka i uzdrowicielka: Drżyjcie, albowiem nadchodzi Niszczyciel Narodów. Stratują waszą ziemię i sznurem ją podzielą. Miasta wasze zostaną zburzone i pozbawione mieszkańców. Nietoperz i kruk w domach waszych zamieszkają, drzewo straci liść, zgnije owoc i zgorzknieje ziarno. Zaprawdę powiadam wam, oto nadchodzi czas miecza i topora, wiek wilczej zamieci. Miasto płonie, wąskie uliczki zieją ogniem i żarem. Narasta wrzask, odgłosy zajadłej walki, murem wstrząsają głuche uderzenia taranu. Krzyk, strach. Obezwładniający, paraliżujący, duszący strach.", price: 36.99, image: "krew_elfow"),
        Book(title: "\"Pieśń Lodu i Ognia. Starcie królów \"", author: "Martin George R. R.", category: "fantasy", description: "Powieść „Starcie królów” to drugi tom cyklu Pieśń Lodu i Ognia. Tym razem George R. R. Martin opowiada historię pełną intryg, zdrad i politycznych rozgrywek o niezwykłej sile oddziaływania. Dopóki żył król Robert, Żelazny Tron jednoczył Zachodnie Królestwa. Po jego śmierci wdowa zdradziła królewskie ideały, bracia wszczęli wojnę, a Sansa została narzeczoną mordercy ojca, który teraz przejął jego tron i stał się królem. W każdym z królestw, od Smoczej Wyspy po Koniec Burzy, głowy najpotężniejszych rodów ogłaszają się królami i walczą o swoje racje. Pewnego dnia z Cytadeli przylatuje biały kruk, wieszcząc zapowiedź końca lata, jakie pamiętali żyjący ludzie. Mimo kłótni i waśni wszyscy zdają sobie sprawę, że najgroźniejszym wrogiem może okazać się nadciągająca zima...", price: 40.49, image: "starcie_krolow"),
        Book(title: "\"Sztorm stulecia\"", author: "King Stephen", category: "horror", description: "Little Tall, mała wyspa u wybrzeży stanu Maine, przygotowuje się do nadejścia zimowej burzy, którą meteorologowie zapowiadają jako sztorm stulecia. Wraz z pierwszymi płatkami śniegu na wyspie zjawia się Andre Linoge i morduje jedną z najstarszych jej mieszkanek, Marthę Clarendon. Potem spokojnie zasiada w jej fotelu, trzymając zakrwawioną laskę ze srebrną głową wilka... Po aresztowaniu szaleńca horror nie ustaje - śmierć pochłania kolejne ofiary; więzień steruje nią z celi, odgrywając morderczą pantomimę. \"Dajcie mi to, czego chcę, a odejdę\" - informuje społeczność Little Tall.", price: 33.60, image: "sztorm"),
        Book(title: "\"Siódma dusza\"", author: "Wardziak Andrzej", category: "horror", description: "Grupa znajomych postanawia spędzić piątkowy wieczór w wiekowej Wkrótce jednak okazuje się, że dom skrywa wiele tajemnic. Młodzi ludzie nie są w nim sami. Jeden z nich okalecza się niemal śmiertelnie. Wszystkich ogarnia lęk, który pogłębia panujący chaos. Zwiedzając willę, bohaterowie znajdują ukryty pokój, który służy do nawiązywania kontaktów z zaświatami. Odkrycie uruchamia lawinę zdarzeń, która doprowadzi do dramatu.", price: 14.95, image: "siodma_dusza"),
        Book(title: "\"Stukostrachy\"", author: "King Stephen", category: "horror", description: "Haven, idylliczne miasteczko w stanie Maine, przeobraża się w niebezpieczną pułapkę dla każdego nowego przybysza. Diabelską przemianę wywołuje na pozór błahe wydarzenie - Bobbi Anderson potyka się w lesie o dziwny metalowy przedmiot i bezskutecznie stara się go wykopać. Wkrótce tajemnicza rzecz, zagrzebana w ziemi od tysiącleci, zaczyna się rozrastać i zmieniać kształty, upodabniając się do ruin starożytnej budowli. Bobbi i jej partner popadają w dziwne uzależnienie od tego wykopaliska, a wszyscy mieszkańcy Haven zostają obdarzeni mocą nieznaną zwykłym śmiertelnikom... Powieść doskonale łączy elementy fantastyki i grozy. Oprócz sporej dawki horroru, humoru i napięcia, czytelnicy znajdą w niej znakomite obrazki obyczajowe z życia amerykańskiej prowincji. Wszystko to, za co kochamy horrory - autentyczny strach, wciągająca fabuła i tajemnica odkrywana bardzo, baaardzo powoli. Aż do ostatniej strony. - Życie Warszawy Nieprawdopodobnie przerażająca historia - od tej książki nie można się oderwać. - Los Angeles Times", price: 12.99, image: "stukostrachy"),
        Book(title: "\"Nowy dom na wyrębach\"", author: "Darda Stefan", category: "horror", description: "Minęło kilka miesięcy od dnia, w którym Hubert Kosmala po raz ostatni odwiedził Wyręby, jednak wydarzenia, które miały tam miejsce na początku 1996 roku, zaczynają coraz mocniej odbijać się na jego życiu prywatnym i zawodowym. W pewnym momencie uświadamia sobie, że ucieczka od opuszczonego domu i związanych z nim wyrzutów sumienia to droga donikąd, wyjeżdża więc na jakiś czas do Wyrębów, aby zmierzyć się z własnymi demonami i odzyskać spokój ducha. Martwa cisza zalegająca nad tym miejscem jest trudna do zniesienia, a poczucie zagrożenia z dnia na dzień staje się coraz bardziej dojmujące. Czy wszystko zmieni się na lepsze wraz z przybyciem do Wyrębów nowych mieszkańców? A może to właśnie ich obecność sprawi, że Hubert uwierzy we wszystko, co Marek Leśniewski opisał w swoim pamiętniku?", price: 24.43, image: "nowy_dom"),
        Book(title: "\"Pod kopułą\"", author: "King Stephen", category: "horror", description: "Pewnego pogodnego, jesiennego dnia małe amerykańskie miasteczko Chester's Mill zostaje nagle i niewytłumaczalnie odcięte od świata. Otacza je niewidoczne pole siłowe, które mieszkańcy zaczynają nazywać kopułą. Sytuacja szybko się pogarsza. Pole wpływa niekorzystnie na środowisko, a ludzi powoli ogarnia panika… Dale Barbara, weteran wojny w Iraku zarabiający na życie jako wędrowny kucharz, jest zmuszony do pozostania w Chester’s Mill. Wspierany przez wojsko, które znajduje się na zewnątrz kopuły, wraz z garstką ochotników próbuje uspokoić nastroje społeczne. Na drodze staje im Duży Jim Rennie, ambitny lokalny polityk, który za wszelką cenę chce wykorzystać sytuację dla własnych celów. Wraz z synem ukrywają wiele koszmarnych tajemnic, które nie mogą ujrzeć światła dziennego. Czas ucieka, a największym wrogiem mieszkańców jest sama kopuła. Czy dowiedzą się, jak powstała, zanim będzie za późno? Czas goni. A właściwie czasu już brak… ", price: 39.20, image: "pod_kopula")
    ]
    
    var music: [Music] = [
        Music(title: "Christmas", author: "Buble Michael", price: 26.99, image: "christmas", musicPlay: ""),
        Music(title: "Take Me To The Alley", author: "Porter Gregory", price: 19.99, image: "take_me_to", musicPlay: ""),
        Music(title: "Born To Die", author: "Del Rey Lana", price: 21.59, image: "lana", musicPlay: ""),
        Music(title: "Listen Without Prejudice", author: "Michael George", price: 58.59, image: "george", musicPlay: ""),
        Music(title: "Egzotyka", author: "Quebonafide", price: 35.55, image: "quebo", musicPlay: ""),
        Music(title: "Revival", author: "Eminem", price: 57.99, image: "eminem", musicPlay: ""),
        Music(title: "Jestem tu nowa", author: "Wyszkoni Anna", price: 35.99, image: "wyszkoni", musicPlay: ""),
        Music(title: "Despacito & Mis Grandes Exitos", author: "Fonsi Luis", price: 31.49, image: "despacito", musicPlay: ""),
        Music(title: "This Is Acting", author: "Sia", price: 22.99, image: "sia", musicPlay: ""),
        Music(title: "Joanne", author: "Lady Gaga", price: 28.99, image: "gaga", musicPlay: ""),
    ]

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
        if segue.identifier == "biografie" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.books = biographyBooks
        }
        if segue.identifier == "horrory" {
            let destinationController = segue.destination as! BookTableViewController
            destinationController.books = fantasyBooks
        }
        if segue.identifier == "muzyka" {
            let destinationController = segue.destination as! MusicTableViewController
            destinationController.music = music
        }
    }
}

