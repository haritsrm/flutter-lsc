class User {
  static const String PassionCooking = 'cooking';
  static const String PassionHiking = 'hiking';
  static const String PassionTraveling = 'traveling';
  
  String firstName = '';
  String lastName = '';
  
  Map passions = {
    PassionCooking: false,
    PassionHiking: false,
    PassionTraveling: false
  };
  bool newsletter = false;
  
  save() {
    print('saving user using a web service');
  }
}