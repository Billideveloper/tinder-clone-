//
//  PeopleTableViewController.swift
//  tinder(clone)
//
//  Created by Ravi Thakur on 26/11/20.
//

import UIKit

class PeopleTableViewController: UITableViewController, UISearchResultsUpdating {
    
    @IBOutlet weak var cardView: UIView!
    
    var searchController: UISearchController = UISearchController(searchResultsController: nil)
    
    var user: [User] = []
    
    var searchResults: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        observeUser()
        setupSearchController()
        setTableView()
      
    }
    
    func setTableView(){
        
        
        self.tableView.tableFooterView = UIView()
        
        
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        
        if searchController.searchBar.text == nil || searchController.searchBar.text!.isEmpty{
            view.endEditing(true)
        }else{
            
            let textLowerCased = searchController.searchBar.text!.lowercased()
            filterContetnt(for: textLowerCased)
        }
        
        tableView.reloadData()
        
    }
    
    func filterContetnt(for searchtext: String){
        searchResults = self.user.filter {
            return $0.name.lowercased().range(of: searchtext) != nil
        }
        
        
        
    }
    
    
    
    func setupSearchController(){
        
        searchController.searchBar.placeholder = "Search user"
        searchController.searchResultsUpdater = self
        definesPresentationContext = true
        searchController.searchBar.tintColor = UIColor.black
        navigationItem.hidesSearchBarWhenScrolling = true
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
    }
    
    func observeUser(){
        Api.User.observeUsers { (users) in
            self.user.append(users)
            self.tableView.reloadData()
        }
    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        if searchController.isActive{
//            return searchResults.count
//        }else{
//
//            return self.user.count
//        }
        
        return searchController.isActive ? searchResults.count : self.user.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: User_Cell_Identifier, for: indexPath) as! UserTableViewCell
        let newUser = searchController.isActive ? searchResults[indexPath.row] : user[indexPath.row]
        cell.loadData(newUser)


        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? UserTableViewCell{
            
          let storyBoard = UIStoryboard(name: "Main", bundle: nil)
          let ChatVc = storyBoard.instantiateViewController(identifier: Chat_cell_Identifier) as! ChatViewController

            ChatVc.userImage = cell.profileImage.image
            ChatVc.userName = cell.userName.text
            self.navigationController?.pushViewController(ChatVc, animated: true)
        }
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

}
