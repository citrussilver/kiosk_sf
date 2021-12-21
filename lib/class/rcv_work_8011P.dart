class RcvWork8011P {
  final String rcv_dt;
  final String rcv_seq;
  final String rcv_no;
  final String cust_cd;
  final String cust_nm;
  final String rcv_type_nm;


  RcvWork8011P({
    required this.rcv_dt,
    required this.rcv_seq,
    required this.rcv_no,
    required this.cust_cd,
    required this.cust_nm,
    required this.rcv_type_nm 
  });

  factory RcvWork8011P.fromJson(Map<String, dynamic> json) => RcvWork8011P(
      rcv_dt: json['RCV_DT'],
      rcv_seq: json['RCV_SEQ'],
      rcv_no: json['RCV_NO'],
      cust_cd: json['CUST_CD'],
      cust_nm: json['CUST_NM'],
      rcv_type_nm: json['RCV_TYPE_NM']
  );
}