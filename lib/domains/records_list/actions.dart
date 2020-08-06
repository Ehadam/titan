import 'package:titan/domains/records_list/record.dart';

List<Record> fetchRecords() {
  return <Record>[
    Record('A Study in Scarlet', DateTime.now(), 25, RecordStatus.SOLD,
        salePrice: 33),
    Record('The Hound of the Baskervilles', DateTime.now(), 30,
        RecordStatus.UNSOLD),
  ];
}
