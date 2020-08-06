class Record {
  String id;
  String title;
  DateTime purchaseDate;
  double purchasePrice;
  DateTime saleDate;
  double salePrice;
  RecordStatus status;

  // TODO: change to a named param constructor?
  Record(this.title, this.purchaseDate, this.purchasePrice, this.status,
      {this.salePrice});
}

enum RecordStatus { SOLD, UNSOLD }

extension RecordStatusExtension on RecordStatus {
  String get getString {
    switch (this) {
      case RecordStatus.UNSOLD:
        return 'UNSOLD';
      case RecordStatus.SOLD:
        return 'SOLD';
      default:
        return null;
    }
  }

  static List<String> getStringList() {
    return <String>['SOLD', 'UNSOLD'];
  }
}
