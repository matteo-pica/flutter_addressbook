class ContactModal {
  final String fullName;
  final String number;

  const ContactModal({this.fullName, this.number});
  String initials() {
    List<String> arr = fullName.split(" ");
    String ret="";
    arr.forEach((v){
      ret = "$ret${v[0]}" ;
    });
    return ret;
  }
}
