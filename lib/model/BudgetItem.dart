class BudgetItem {
  int _budgetId;
  String _budgetName;
  String _budgetDate;
  int _budgetStatus;
  String _monthYear;
  String _lastUpdatedDate;

  BudgetItem(this._budgetName, this._budgetDate, this._budgetStatus,this._monthYear,this._lastUpdatedDate);

  BudgetItem.map(dynamic obj) {
    this._budgetId = obj['budgetId'];
    this._budgetName = obj['budgetName'];
    this._budgetDate = obj['budgetDate'];
    this._budgetStatus = obj['budgetStatus'];
    this._monthYear = obj['monthYear'];
    this._lastUpdatedDate = obj['lastUpdatedDate'];
  }

  int get budgetId => _budgetId;
  String get budgetName => _budgetName;
  String get budgetDate => _budgetDate;
  int get budgetStatus => _budgetStatus;
  String get monthYear => _monthYear;
  String get lastUpdatedDate => _lastUpdatedDate;

  Map<String, dynamic> toMap() {
    Map map = new Map<String, dynamic>();
    if (_budgetId != null) {
      map['budgetId'] = _budgetId;
    }
    map['budgetName'] = _budgetName;
    map['budgetDate'] = _budgetDate;
    map['budgetStatus'] = _budgetStatus;
    map['monthYear'] = _monthYear;
    map['lastUpdatedDate'] = _lastUpdatedDate;
    return map;
  }

  BudgetItem.fromMap(Map<String, dynamic> map) {
    this._budgetId = map['budgetId'];
    this._budgetName = map['budgetName'];
    this._budgetDate = map['budgetDate'];
    this._budgetStatus = map['budgetStatus'];
    this._monthYear = map['monthYear'];
    this._lastUpdatedDate = map['lastUpdatedDate'];
  }
}
