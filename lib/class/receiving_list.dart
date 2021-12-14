class ReceivingList {
  final String rcv_date;
  final int rcv_seq;
  final String rcv_no;
  final String rcv_status_nm;
  final String cust_cd;
  final String cust_nm;
  final String rcv_type_nm;
  final int item_cnt;

  ReceivingList({required this.rcv_date, required this.rcv_seq, required this.rcv_no, required this.rcv_status_nm, required this.cust_cd, required this.cust_nm, required this.rcv_type_nm, required this.item_cnt });

  factory ReceivingList.fromJson(Map<String, dynamic> json) => ReceivingList(
      rcv_date: json['rcv_date'],
      rcv_seq: json['rcv_seq'],
      rcv_no: json['rcv_no'],
      rcv_status_nm: json['rcv_status_nm'],
      cust_cd: json['cust_cd'],
      cust_nm: json['cust_nm'],
      rcv_type_nm: json['rcv_type_nm'],
      item_cnt: json['item_cnt'],
  );
}