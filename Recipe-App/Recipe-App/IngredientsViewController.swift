//
//  ViewController.swift
//  Recipe-App
//
//  Created by Alikin Nikita Romanovich on 18.01.2023.
//

import UIKit

class IngredientsTableViewController: UIViewController {

    var ingredients = [Ingredients]()
    var pickedIngredients  = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ingredients = DataLoad().ingredients
    }
    
    // MARK: - Table view data source
    
    //    override func numberOfSections(in tableView: UITableView) -> Int {
    //        // #warning Incomplete implementation, return the number of sections
    //        return 0
    //    }
    
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return ingredients.count
//    }
//
//
//    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ingredientCell", for: indexPath) as? IngredientsTableViewCell else {return UITableViewCell()}
//        let ingredient = ingredients[indexPath.row].name
//
//        cell.textLabel?.text = ingredient
//        cell.imageView?.image = UIImage(named: ingredient)
//
////        cell.name.text = ingredients[indexPath.row].name
////        cell.ingredientLogo.image = UIImage(named: ingredients[indexPath.row].name)
//
//        //        var content = cell.defaultContentConfiguration()
//        //        content.text = ingredient
//        //        content.image = UIImage(named: ingredient)
//        //
//        //        cell.contentConfiguration = content
//
//        return cell
//    }
//
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        tableView.deselectRow(at: indexPath, animated: true)
//        let ingredient = ingredients[indexPath.row].name
//        pickedIngredients.append(ingredients[indexPath.row].name)
//    }
//
    
    
    
    private func fetchRecipe () {
        
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

