class Lawyer {
  final String name;
  final String email;
  final String phoneNumber;
  final String imageUrl;
  final String specialization;
  final String location;
  final String bio; 
  final int yearsOfExperience; 
  final String workingHours;
  final String image;
   bool isFav ;
  Lawyer({
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.imageUrl,
    required this.specialization,
    required this.location,
    required this.bio, // إضافة لمحة عن المحامي
    required this.yearsOfExperience, // إضافة العمر المهني
    required this.workingHours, // إضافة أوقات الدوام
        required this.image, 
        this.isFav = false,

  });

}
