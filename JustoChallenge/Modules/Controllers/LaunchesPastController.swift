//
//  LaunchesPastController.swift
//  JustoChallenge
//
//  Created by Alberto Josue Gonzalez Juarez on 10/08/21.
//

import UIKit

class LaunchesPastController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    lazy var viewModel: LaunchesPastViewModel = LaunchesPastViewModel()
    let refreshControl = UIRefreshControl()

    override func viewDidLoad() {
        super.viewDidLoad()
        viewModelSetup()
        setupUI()
        viewModel.fetch()
        self.refreshControl.beginRefreshing()

        // Do any additional setup after loading the view.
    }
    func setupUI() {
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Buscar", style: .plain, target: self, action: #selector(addTapped))
        refreshControl.attributedTitle = NSAttributedString(string: "Cargando 🚀")
          refreshControl.addTarget(self, action: #selector(self.refresh), for: .valueChanged)
          tableView.addSubview(refreshControl)

    }
    @objc func refresh() {
        viewModel.fetch()
    }
    @objc func addTapped() {
        let alertControlller = UIAlertController(title: "Buscar", message: "Ingresa un nombre", preferredStyle: .alert)
        alertControlller.addTextField { (textField : UITextField!) -> Void in
            textField.placeholder = "Nombre"
        }
        let saveAction = UIAlertAction(title: "Buscar nombre", style: .default, handler: { alert -> Void in
            let name = alertControlller.textFields?[0]
            self.viewModel.search(name: name?.text ?? "")
            self.refreshControl.beginRefreshing()
        })

        alertControlller.addAction(saveAction)

        self.present(alertControlller, animated: true, completion: nil)
    }
    private func viewModelSetup() {
        viewModel.successFetch = {[weak self] () in
            DispatchQueue.main.async {
                self?.refreshControl.endRefreshing()
                self?.tableView.reloadData()
            }
        }
        viewModel.failFetch = {[weak self] (message) in
            DispatchQueue.main.async {
                let alert = UIAlertController(title: "🚀 Houston tenemos un problema 🚀", message: message, preferredStyle: .alert)
                let ok = UIAlertAction(title: "Entiendo", style: .cancel, handler: nil)
                alert.addAction(ok)
                self?.present(alert, animated: true, completion: nil)
            }
        }
    }
}

extension LaunchesPastController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfRow()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LaunchCell") as? LaunchCell
        let launch = viewModel.getLaunch(indexPath: indexPath)
        cell?.setupCell(launch: launch)
        return cell ?? UITableViewCell()
    }
    
    
}
