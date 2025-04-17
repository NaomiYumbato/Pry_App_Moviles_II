//
//  BooksViewController.swift
//  Austen&Alcott
//
//  Created by Crhistian Ninalaya on 17/04/25.
//

import UIKit

class BooksViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var booksTableView: UITableView!
    @IBOutlet weak var header: UIView!
    
    var booksMocked: [Book] = [
        Book(title: "Libro 1", author: "Autor 1"),
        Book(title: "Libro 2", author: "Autor 2"),
        Book(title: "Libro 3", author: "Autor 3"),
        Book(title: "Libro 4", author: "Autor 4"),
        Book(title: "Libro 5", author: "Autor 5"),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        booksTableView.delegate = self
        booksTableView.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let path = UIBezierPath(
            roundedRect: header.bounds,
            byRoundingCorners: [.topLeft, .topRight],
            cornerRadii: CGSizeMake(56, 56)
            )
        
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        header.layer.mask = mask
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booksMocked.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookCell", for: indexPath) as! BookTableViewCell
        
        let book = booksMocked[indexPath.row]
        cell.configure(with: book)
        
        return cell
    }
}
