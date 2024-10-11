import 'package:hive/hive.dart';
part 'userdetails_model.g.dart';

@HiveType(typeId: 0)
class UserDetails {
  @HiveField(0)
  final String firstname;
  @HiveField(1)
  final String lastname;
  @HiveField(2)
  String? email;

  UserDetails({required this.firstname, required this.lastname, this.email});
}
