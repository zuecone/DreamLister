//
//  ItemDetailsVC.swift
//  DreamLister
//
//  Created by Henry McC on 2016/12/25.
//  Copyright © 2016 HiddenPlatform. All rights reserved.
//

import UIKit
import CoreData

class ItemDetailsVC: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var storePicker: UIPickerView!
    @IBOutlet weak var titleField: CustomTextField!
    @IBOutlet weak var priceField: CustomTextField!
    @IBOutlet weak var detailsField: CustomTextField!
    
    var stores = [NSStore]()
    var itemToEdit: NSItem?
    

    override func viewDidLoad() {
        super.viewDidLoad()

        //Remove the back button text
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        storePicker.delegate = self
        storePicker.dataSource = self
        
//        let store = NSStore(context: context)
//        store.name = "Best Buy"
//        let store2 = NSStore(context: context)
//        store2.name = "Tesla Dealership"
//        let store3 = NSStore(context: context)
//        store3.name = "Frys Electronics"
//        let store4 = NSStore(context: context)
//        store4.name = "Target"
//        let store5 = NSStore(context: context)
//        store5.name = "Amazon"
//        let store6 = NSStore(context: context)
//        store6.name = "K Mart"
//        
//        appDeleg.saveContext()
        getStores()
        if itemToEdit != nil {
            loadItemData()
        }
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let store = stores[row]
        return store.name
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return stores.count
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    
        //update when selected
    }
    
    func getStores(){
        
        let fetchRequest: NSFetchRequest<NSStore> = NSStore.fetchRequest()
        
        do{
            self.stores = try context.fetch(fetchRequest)
            self.storePicker.reloadAllComponents()
            
        } catch{
            //handle error
        }
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        var  item: NSItem!
        // check if item already exists, if it does then assign to itemToEdit to item, otherwise create new item
        if itemToEdit == nil {
            item = NSItem(context: context) //new item create
        }else
        {
            item = itemToEdit  //existing item update
            
        }
        
        
        
        if let title = titleField.text{
            item.title = title
        }
        if let detail = detailsField.text{
            item.details = detail
        }
        if let price = priceField.text{
            item.price = (price as NSString).doubleValue
        }
        
        item.toStore =  stores[storePicker.selectedRow(inComponent: 0)]
        appDeleg.saveContext()
        _ = navigationController?.popViewController(animated: true)
    }
    
    func loadItemData(){
        if let item = itemToEdit{
            titleField.text = item.title
            priceField.text = "\(item.price)"
            detailsField.text = item.details
            
            if let store = item.toStore {
                var index = 0
                repeat{
                    let s = stores[index]
                    if s.name == store.name{
                        storePicker.selectRow(index, inComponent: 0, animated: false)
                        break
                    }
                    index += 1
                    
                }while(index < stores.count)
            }
        }
    }
}
