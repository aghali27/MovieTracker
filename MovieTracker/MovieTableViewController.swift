//
//  MovieTableViewController.swift
//  MovieTracker
//
//  Created by Agha Ali on 16/5/20.
//  Copyright © 2020 Agha Ali. All rights reserved.
//

import UIKit

class MovieTableViewController: UITableViewController {

    var movies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadSampleMovies()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Table view cells are reused and should be dequeued using a cell identifier.
        let cellIdentifier = "MovieTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? MovieTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MovieTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let movie = movies[indexPath.row]

        cell.nameLabel.text = movie.name
        cell.photoImageView.image = movie.photo
        cell.ratingControl.rating = movie.rating

        return cell
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    //MARK: Private Methods
    
    private func loadSampleMovies() {
        let photo1 = UIImage(named: "Movie1")
        let photo2 = UIImage(named: "Movie2")
        let photo3 = UIImage(named: "Movie3")
        let photo4 = UIImage(named: "Movie4")
        let photo5 = UIImage(named: "Movie5")
        let photo6 = UIImage(named: "Movie6")
        let photo7 = UIImage(named: "Movie7")
        
        guard let movie1 = Movie(name: "Siberia", photo: photo1, rating: 4) else {
            fatalError("Unable to instantiate movie1")
        }
        
        guard let movie2 = Movie(name: "Venom", photo: photo2, rating: 5) else {
            fatalError("Unable to instantiate movie2")
        }
        
        guard let movie3 = Movie(name: "Inception", photo: photo3, rating: 3) else {
            fatalError("Unable to instantiate movie3")
        }
        
        guard let movie4 = Movie(name: "Spider-Man Home Coming", photo: photo4, rating: 4) else {
            fatalError("Unable to instantiate movie4")
        }
        
        guard let movie5 = Movie(name: "THOR The Dark World", photo: photo5, rating: 4) else {
            fatalError("Unable to instantiate movie5")
        }
        
        guard let movie6 = Movie(name: "Turbo", photo: photo6, rating: 3) else {
            fatalError("Unable to instantiate movie6")
        }
        
        guard let movie7 = Movie(name: "Captain America The First Avenger", photo: photo7, rating: 5) else {
            fatalError("Unable to instantiate movie7")
        }
        
        movies += [movie1, movie2, movie3, movie4, movie5, movie6, movie7]
    }
    
}
