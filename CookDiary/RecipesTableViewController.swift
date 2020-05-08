//
//  RecipesTableViewController.swift
//  CookDiary
//
//  Created by Noha on 04.05.20.
//  Copyright © 2020 udacity. All rights reserved.
//

import UIKit
struct Recipe{
    var recipeName : String
    var recipeIngredients : String
    var recipeMethod: String
}


class RecipesTableViewController: UITableViewController {


    var recipeTable = [
        Recipe(recipeName: "Pizza", recipeIngredients: "pizza dough, tomato sauce, mozerella", recipeMethod: "put in oven for 10 mins" ),
        Recipe(recipeName: "Pasta", recipeIngredients: "Pasta, tomato Sauce", recipeMethod: "Boil pasta for 10 mins")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()


    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return recipeTable.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "RecipeCell", for: indexPath)

        let recipe = recipeTable[indexPath.row]
        cell.textLabel?.text = recipe.recipeName
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "recipeDetail", sender: self)
        
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
