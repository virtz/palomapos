class TableService {
  final String title;
  final String? customerName;
  final String quota;
  final String? time;
  final TableStatus status;

  TableService(
      {required this.title,
      this.customerName,
      required this.quota,
      this.time,
      required this.status});
}

List<TableService> tables = [
  TableService(
      title: "T1",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
  TableService(
      title: "T2",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T3",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
  TableService(
      title: "T4",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T5",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
  TableService(
      title: "T6",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T7",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T8",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.stale),
  TableService(
      title: "T9",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T10",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T11",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
  TableService(
      title: "T12",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T13",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T14",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T15",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T16",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
  TableService(
      title: "T17",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.done),
  TableService(
      title: "T18",
      customerName: "Sylvia Do",
      quota: '1/4',
      time: "09:30",
      status: TableStatus.cancelled),
];

enum TableStatus { done, cancelled, stale }
