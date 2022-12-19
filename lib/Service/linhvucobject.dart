class PackageQuestion {
  int id;
  String tenlv;
  PackageQuestion({required this.id, required this.tenlv});
  static PackageQuestion fromJson(Map<String, dynamic> json) => PackageQuestion(
        id: json['id'],
        tenlv: json['tenlv'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'tenlv': tenlv,
      };
}
