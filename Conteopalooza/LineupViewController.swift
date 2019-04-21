//
//  LineupViewController.swift
//  Conteopalooza
//
//  Created by Brian Valente on 12/13/18.
//  Copyright © 2018 Brian Valente. All rights reserved.
//

import UIKit
import GoogleMobileAds

struct LineUpCountry {
    var name: String
    var color: UIColor
    var secondaryColor: UIColor
    var dates: [LineUpDate]?
}

struct LineUpDate {
    var name: String
    var artists: [LineUpArtist]
}

struct LineUpArtist {
    var name: String
}

class LineupViewController: UITableViewController {    
    
    let lineup = [
        LineUpCountry(name: "Argentina", color: UIColor(rgb: 0x71e4fa), secondaryColor: UIColor(rgb: 0xbff0f9), dates: [
            LineUpDate(name: "Viernes 29/03", artists: [
                LineUpArtist(name: "Twenty One Pilots"),
                LineUpArtist(name: "Post Malone"),
                LineUpArtist(name: "Steve Aoki "),
                LineUpArtist(name: "Interpol"),
                LineUpArtist(name: "Jorge Drexler"),
                LineUpArtist(name: "Years & Years"),
                LineUpArtist(name: "Bring Me The Horizon"),
                LineUpArtist(name: "Rosalía"),
                LineUpArtist(name: "Zhu"),
                LineUpArtist(name: "Portugal. The Man"),
                LineUpArtist(name: "Rüfüs Du Sol"),
                LineUpArtist(name: "RL Grime"),
                LineUpArtist(name: "Khea"),
                LineUpArtist(name: "Valentino Khan"),
                LineUpArtist(name: "Kamasi Washington"),
                LineUpArtist(name: "Alex Anwandter"),
                LineUpArtist(name: "WOS"),
                LineUpArtist(name: "Escalandrum"),
                LineUpArtist(name: "Seven Kayne"),
                LineUpArtist(name: "Parcels"),
                LineUpArtist(name: "Bhavi"),
                LineUpArtist(name: "The Fever 333"),
                LineUpArtist(name: "Hippie Sabotage"),
                LineUpArtist(name: "Jetlag"),
                LineUpArtist(name: "Dak1llah"),
                LineUpArtist(name: "Omar Varela & Mykka"),
                LineUpArtist(name: "Conociendo Rusia"),
                LineUpArtist(name: "La Grande"),
                LineUpArtist(name: "Julio Victoria"),
                LineUpArtist(name: "Telescopios"),
                LineUpArtist(name: "1915")
            ]),
            LineUpDate(name: "Sábado 30/03", artists: [
                LineUpArtist(name: "Arctic Monkeys"),
                LineUpArtist(name: "Sam Smith"),
                LineUpArtist(name: "Tiësto"),
                LineUpArtist(name: "The 1975"),
                LineUpArtist(name: "Fito Paez"),
                LineUpArtist(name: "Macklemore"),
                LineUpArtist(name: "Foals"),
                LineUpArtist(name: "St. Vincent"),
                LineUpArtist(name: "Juana Molina"),
                LineUpArtist(name: "KSHMR"),
                LineUpArtist(name: "Don Diablo"),
                LineUpArtist(name: "Troye Sivan"),
                LineUpArtist(name: "Los Hermanos"),
                LineUpArtist(name: "C. Tangana"),
                LineUpArtist(name: "Perotá Chingó"),
                LineUpArtist(name: "Jain"),
                LineUpArtist(name: "GTA"),
                LineUpArtist(name: "Loud Luxury"),
                LineUpArtist(name: "Perras on the beach"),
                LineUpArtist(name: "Lelé"),
                LineUpArtist(name: "Dano"),
                LineUpArtist(name: "Sita Abellán"),
                LineUpArtist(name: "Catnapp"),
                LineUpArtist(name: "Ca7riel"),
                LineUpArtist(name: "Coral Casino"),
                LineUpArtist(name: "Candelaria Zamar"),
                LineUpArtist(name: "Alfonsina"),
                LineUpArtist(name: "Yataians"),
                LineUpArtist(name: "Batalla de los Gallos")
            ]),
            LineUpDate(name: "Domingo 31/03", artists: [
                LineUpArtist(name: "Kendrick Lamar"),
                LineUpArtist(name: "Lenny Kravitz"),
                LineUpArtist(name: "Dimitri Vegas & Like Mike"),
                LineUpArtist(name: "Paulo Londra"),
                LineUpArtist(name: "Caetano, Moreno, Zeca & Tom Veloso"),
                LineUpArtist(name: "ODESZA"),
                LineUpArtist(name: "Greta Van Fleet"),
                LineUpArtist(name: "Vicentico"),
                LineUpArtist(name: "La Mona Jiménez"),
                LineUpArtist(name: "Snow Patrol"),
                LineUpArtist(name: "Lali"),
                LineUpArtist(name: "Cazzu"),
                LineUpArtist(name: "Jorja Smith"),
                LineUpArtist(name: "Fisher"),
                LineUpArtist(name: "Kungs"),
                LineUpArtist(name: "Clairo"),
                LineUpArtist(name: "LANY"),
                LineUpArtist(name: "C.R.O"),
                LineUpArtist(name: "Neo Pistea"),
                LineUpArtist(name: "Bad Gyal"),
                LineUpArtist(name: "Gryffin"),
                LineUpArtist(name: "Ama Lou"),
                LineUpArtist(name: "BAMBI"),
                LineUpArtist(name: "Salvapantallas"),
                LineUpArtist(name: "Lucho SSJ"),
                LineUpArtist(name: "Metro Live"),
                LineUpArtist(name: "Barbi Recanati"),
                LineUpArtist(name: "Mexican Jihad & Tayhana"),
                LineUpArtist(name: "Tomi Morano"),
                LineUpArtist(name: "Gativideo"),
                LineUpArtist(name: "Naomi Preizler"),
                LineUpArtist(name: "Agrupación Capitán")
            ])
        ]),
        LineUpCountry(name: "Brasil", color: UIColor(rgb: 0x00af9a), secondaryColor: UIColor(rgb: 0xfff46f), dates: [
            LineUpDate(name: "Sexta-Feira 05/04", artists: [
                LineUpArtist(name: "Arctic Monkeys"),
                LineUpArtist(name: "Tribalistas"),
                LineUpArtist(name: "Sam Smith"),
                LineUpArtist(name: "Tiësto"),
                LineUpArtist(name: "The 1975"),
                LineUpArtist(name: "Macklemore"),
                LineUpArtist(name: "Foals"),
                LineUpArtist(name: "KSHMR"),
                LineUpArtist(name: "St. Vincent"),
                LineUpArtist(name: "Zhu"),
                LineUpArtist(name: "Portugal. The Man"),
                LineUpArtist(name: "Fisher"),
                LineUpArtist(name: "Troye Sivan"),
                LineUpArtist(name: "Scalene"),
                LineUpArtist(name: "Bruno Be"),
                LineUpArtist(name: "Loud Luxury"),
                LineUpArtist(name: "Elekfantz"),
                LineUpArtist(name: "Autoramas"),
                LineUpArtist(name: "Dashdot"),
                LineUpArtist(name: "Maz"),
                LineUpArtist(name: "The Fever 333"),
                LineUpArtist(name: "Molho Negro")
            ]),
            LineUpDate(name: "Sábado 06/04", artists: [
                LineUpArtist(name: "Kings Of Leon"),
                LineUpArtist(name: "Post Malone"),
                LineUpArtist(name: "Lenny Kravitz"),
                LineUpArtist(name: "Steve Aoki"),
                LineUpArtist(name: "Vintage Culture"),
                LineUpArtist(name: "ODESZA"),
                LineUpArtist(name: "Snow Patrol"),
                LineUpArtist(name: "Bring Me The Horizon"),
                LineUpArtist(name: "Silva"),
                LineUpArtist(name: "Chemical Surf"),
                LineUpArtist(name: "Rashid"),
                LineUpArtist(name: "Kungs"),
                LineUpArtist(name: "Jorja Smith"),
                LineUpArtist(name: "LANY"),
                LineUpArtist(name: "Dubdogz feat. Vitor Kley"),
                LineUpArtist(name: "Illusionize"),
                LineUpArtist(name: "Jain"),
                LineUpArtist(name: "Linker e os Caramelows"),
                LineUpArtist(name: "Valentino Khan"),
                LineUpArtist(name: "Gryffin"),
                LineUpArtist(name: "Liu"),
                LineUpArtist(name: "Carne Doge"),
                LineUpArtist(name: "Duda Beat"),
                LineUpArtist(name: "Catavento")
            ]),
            LineUpDate(name: "Domingo 07/04", artists: [
                LineUpArtist(name: "Kendrick Lamar"),
                LineUpArtist(name: "Twenty One Pilots"),
                LineUpArtist(name: "Interpol"),
                LineUpArtist(name: "Dimitri Vegas & Like Mike"),
                LineUpArtist(name: "Greta Van Fleet"),
                LineUpArtist(name: "Years & Years"),
                LineUpArtist(name: "Gabriel o Pensador"),
                LineUpArtist(name: "RL Grime"),
                LineUpArtist(name: "Don Diablo"),
                LineUpArtist(name: "BK'"),
                LineUpArtist(name: "GTA"),
                LineUpArtist(name: "Groove Delight"),
                LineUpArtist(name: "Rüfüs Du Sol"),
                LineUpArtist(name: "Bhaskar"),
                LineUpArtist(name: "KVSH"),
                LineUpArtist(name: "Letrux"),
                LineUpArtist(name: "Pontifexx"),
                LineUpArtist(name: "Aláfia"),
                LineUpArtist(name: "Luiza Lian"),
                LineUpArtist(name: "The Inspector Cluzo"),
                LineUpArtist(name: "E A Terra Nunca Me Pareceu Tão Distante")
            ])
        ]),
        LineUpCountry(name: "Chile", color: UIColor(rgb: 0xff4438), secondaryColor: UIColor(rgb: 0x0075c9), dates: [
            LineUpDate(name: "Viernes 29/03", artists: [
                LineUpArtist(name: "Kendrick Lamar"),
                LineUpArtist(name: "Lenny Kravitz"),
                LineUpArtist(name: "Dimitri Vegas & Like Mike"),
                LineUpArtist(name: "Greta Van Fleet"),
                LineUpArtist(name: "Vicentico"),
                LineUpArtist(name: "Snow Patrol"),
                LineUpArtist(name: "Caetano, Moreno, Zeca & Tom Veloso"),
                LineUpArtist(name: "KSHMR"),
                LineUpArtist(name: "Jorja Smith"),
                LineUpArtist(name: "Paulo Londra"),
                LineUpArtist(name: "Clairo"),
                LineUpArtist(name: "Fisher"),
                LineUpArtist(name: "Kungs"),
                LineUpArtist(name: "LANY"),
                LineUpArtist(name: "Los Tres"),
                LineUpArtist(name: "Francisca Valenzuela"),
                LineUpArtist(name: "Green Valley"),
                LineUpArtist(name: "Nicola Cruz"),
                LineUpArtist(name: "Tokio Ska Paradice Orchestra"),
                LineUpArtist(name: "Gryffin"),
                LineUpArtist(name: "Mc Kevinho"),
                LineUpArtist(name: "Satori"),
                LineUpArtist(name: "Ángel Parra y los Retornados"),
                LineUpArtist(name: "Chancha Vía Circuito"),
                LineUpArtist(name: "DJ Raff"),
                LineUpArtist(name: "Kid Keo"),
                LineUpArtist(name: "The Inspector Cluzo"),
                LineUpArtist(name: "Frank's White Canvas"),
                LineUpArtist(name: "Elkin Robinson"),
                LineUpArtist(name: "Rootz Hi-Fi"),
                LineUpArtist(name: "Los Pulentos"),
                LineUpArtist(name: "Drefquila"),
                LineUpArtist(name: "Bronko Yotte"),
                LineUpArtist(name: "Playa Gótica"),
                LineUpArtist(name: "Fernanda Arrau"),
                LineUpArtist(name: "Melanie Ribbe"),
                LineUpArtist(name: "Amanitas"),
                LineUpArtist(name: "Subhira"),
                LineUpArtist(name: "Kaleem"),
                LineUpArtist(name: "Compadre"),
                LineUpArtist(name: "Sistek"),
                LineUpArtist(name: "Red Rabbit"),
                LineUpArtist(name: "Dj Tressor"),
                LineUpArtist(name: "Drunvaloop"),
                LineUpArtist(name: "Los Frutantes")
            ]),
            LineUpDate(name: "Sábado 30/03", artists: [
                LineUpArtist(name: "Twenty One Pilots"),
                LineUpArtist(name: "Post Malone"),
                LineUpArtist(name: "Steve Aoki"),
                LineUpArtist(name: "Interpol"),
                LineUpArtist(name: "ODESZA"),
                LineUpArtist(name: "Years & Years"),
                LineUpArtist(name: "Bring Me The Horizon"),
                LineUpArtist(name: "Portugal. The Man"),
                LineUpArtist(name: "Ziggy Marley"),
                LineUpArtist(name: "RL Grime"),
                LineUpArtist(name: "Rüfus Du Sol"),
                LineUpArtist(name: "Protoje & The Indiggnation"),
                LineUpArtist(name: "Américo"),
                LineUpArtist(name: "Monsieur Periné"),
                LineUpArtist(name: "The Fever 333"),
                LineUpArtist(name: "Booka Shade"),
                LineUpArtist(name: "Valentino Khan"),
                LineUpArtist(name: "DJ Who"),
                LineUpArtist(name: "Kamasi Washington"),
                LineUpArtist(name: "Ases Falsos"),
                LineUpArtist(name: "Hippie Savotage"),
                LineUpArtist(name: "Jetlag "),
                LineUpArtist(name: "Zaturno"),
                LineUpArtist(name: "Pillantes"),
                LineUpArtist(name: "Satori"),
                LineUpArtist(name: "DJ Raff"),
                LineUpArtist(name: "Bad Gyal"),
                LineUpArtist(name: "Rootz Hi-Fi"),
                LineUpArtist(name: "Alemám"),
                LineUpArtist(name: "Tomasa del Real"),
                LineUpArtist(name: "Rubio"),
                LineUpArtist(name: "A. Chal"),
                LineUpArtist(name: "Nova Materia"),
                LineUpArtist(name: "Humboldt"),
                LineUpArtist(name: "Gianluca"),
                LineUpArtist(name: "Los Pulentos"),
                LineUpArtist(name: "Julio Victoria"),
                LineUpArtist(name: "Entrópica"),
                LineUpArtist(name: "Isa Rojas"),
                LineUpArtist(name: "Goldenrat"),
                LineUpArtist(name: "Pol Del Sur"),
                LineUpArtist(name: "FLAK"),
                LineUpArtist(name: "Danzante"),
                LineUpArtist(name: "Fundación Orquestas Juveniles e Infantiles")
            ]),
            LineUpDate(name: "Domingo 31/03", artists: [
                LineUpArtist(name: "Arctic Monkeys"),
                LineUpArtist(name: "Sam Smith"),
                LineUpArtist(name: "Tiësto"),
                LineUpArtist(name: "The 1975"),
                LineUpArtist(name: "Macklemore"),
                LineUpArtist(name: "Juanes"),
                LineUpArtist(name: "Rosalía"),
                LineUpArtist(name: "Foals"),
                LineUpArtist(name: "ST. Vincent"),
                LineUpArtist(name: "Zhu"),
                LineUpArtist(name: "Don Diablo"),
                LineUpArtist(name: "Gepe"),
                LineUpArtist(name: "Troye Sivan"),
                LineUpArtist(name: "Ana Tijoux"),
                LineUpArtist(name: "Parcels"),
                LineUpArtist(name: "Joe Vasconcellos"),
                LineUpArtist(name: "Jain"),
                LineUpArtist(name: "Loud Luxury"),
                LineUpArtist(name: "GTA"),
                LineUpArtist(name: "Paloma Mami"),
                LineUpArtist(name: "La Vela Puerca"),
                LineUpArtist(name: "Khea"),
                LineUpArtist(name: "La Floripondio"),
                LineUpArtist(name: "Seun Kuti "),
                LineUpArtist(name: "C. Tangana"),
                LineUpArtist(name: "Fiskales Ad-Hok"),
                LineUpArtist(name: "Sinergia Kids Game"),
                LineUpArtist(name: "Caramelos de Cianuro"),
                LineUpArtist(name: "Rootz Hi-Fi"),
                LineUpArtist(name: "Alika"),
                LineUpArtist(name: "Adelaida"),
                LineUpArtist(name: "Newen Afrobeat"),
                LineUpArtist(name: "Natalia Contesse"),
                LineUpArtist(name: "Sita Abellán"),
                LineUpArtist(name: "Omar Varela"),
                LineUpArtist(name: "Cigarbox Man"),
                LineUpArtist(name: "iLe"),
                LineUpArtist(name: "Fantasna"),
                LineUpArtist(name: "Keko"),
                LineUpArtist(name: "Yoma"),
                LineUpArtist(name: "Sophi Lira"),
                LineUpArtist(name: "Jefe Indio"),
                LineUpArtist(name: "Polimá Westcoast")
            ])
        ])
    ]
    
    //static let barTintColor = UIColor.init(rgb: 0x009F8A)
    static let barTintColor = UIColor.init(rgb: 0xffcc00)
    var backgroundView: UIImageView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBar = navigationController?.navigationBar
        
        view.backgroundColor = UIColor.init(rgb: 0xff4438)

        navBar?.tintColor = UIColor.black
        navBar?.shadowImage = UIImage()
        navBar?.isTranslucent = false
        navBar?.prefersLargeTitles = true
        navBar?.barTintColor = LineupViewController.barTintColor
    }
 
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return lineup.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lineup[section].dates?.count ?? 1
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return lineup[section].name
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LineupCell", for: indexPath)
        
        cell.contentView.backgroundColor = LineupViewController.barTintColor
        
        guard let name = lineup[indexPath.section].dates?[indexPath.row].name else {
            cell.textLabel?.text = "¡Disponible pronto!"
            cell.selectionStyle = .none
            cell.isUserInteractionEnabled = false
            
            return cell
        }
        
        cell.selectionStyle = .blue
        cell.textLabel?.text = name
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        
        if (view is UITableViewHeaderFooterView) {
            let headerView = view as! UITableViewHeaderFooterView
            headerView.textLabel?.textColor = UIColor.black
        }
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let path = tableView.indexPathForSelectedRow else {
            return
        }
        
        tableView.deselectRow(at: path, animated: true)
        
        if segue.destination is LineupDataTableViewController {
            let controller = segue.destination as! LineupDataTableViewController
            
            controller.color = lineup[path.section].color
            controller.secondaryColor = lineup[path.section].secondaryColor
            controller.date = lineup[path.section].dates![path.row]
        }
    }

}
