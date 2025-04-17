import 'package:get/get.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/data/lawyer_model.dart';

class HomeController extends GetxController {
  var lawyers = <Lawyer>[
    Lawyer(
      name: 'علي عبد الله',
      email: 'ali@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'قانون الأسرة',
      location: 'لوس أنجلوس',
      bio: 'محامي ذو خبرة في قضايا الطلاق وحضانة الأطفال.',
      yearsOfExperience: 8,
      workingHours: 'من 9 صباحًا إلى 5 مساءً',
      image: AppImageAsset.logo,
    ),
    Lawyer(
      name: 'أحمد الشريف',
      email: 'ahmed@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'القانون التجاري',
      location: 'شيكاغو',
      bio: 'محامي متخصص في العقود التجارية وحماية الملكية الفكرية.',
      yearsOfExperience: 10,
      workingHours: 'من 10 صباحًا إلى 6 مساءً',
      image: AppImageAsset.lawyer2,
    ),
    Lawyer(
      name: 'فاطمة الزهراء',
      email: 'fatima@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'القانون الجنائي',
      location: 'نيويورك',
      bio: 'محامية بارعة في الدفاع عن المتهمين في القضايا الجنائية.',
      yearsOfExperience: 5,
      workingHours: 'من 11 صباحًا إلى 7 مساءً',
      image: AppImageAsset.lawyer,
    ),
    Lawyer(
      name: 'سعيد القاضي',
      email: 'said@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'القانون الجنائي',
      location: 'نيويورك',
      bio: 'محامي ذو سمعة ممتازة في قضايا الجريمة والعقوبات.',
      yearsOfExperience: 12,
      workingHours: 'من 9 صباحًا إلى 5 مساءً',
      image: AppImageAsset.lawyer2,
    ),
    Lawyer(
      name: 'مريم الرفاعي',
      email: 'mariam@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'القانون الجنائي',
      location: 'نيويورك',
      bio: 'محامية متميزة في قضايا الدفاع الجنائي والعائلة.',
      yearsOfExperience: 7,
      workingHours: 'من 10 صباحًا إلى 6 مساءً',
      image: AppImageAsset.lawyer,
    ),
    Lawyer(
      name: 'يوسف المهدي',
      email: 'youssef@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'قانون الأسرة',
      location: 'لوس أنجلوس',
      bio: 'محامي مختص في قضايا الزواج والطلاق.',
      yearsOfExperience: 6,
      workingHours: 'من 9 صباحًا إلى 5 مساءً',
      image: AppImageAsset.lawyer2,
    ),
    Lawyer(
      name: 'ليلى السعيد',
      email: 'leila@example.com',
      phoneNumber: '123-456-7890',
      imageUrl: 'https://via.placeholder.com/100',
      specialization: 'القانون التجاري',
      location: 'شيكاغو',
      bio: 'محامية بارعة في تسوية المنازعات التجارية.',
      yearsOfExperience: 9,
      workingHours: 'من 10 صباحًا إلى 6 مساءً',
      image: AppImageAsset.logo,
    ),
  ].obs;

// var selectedIndex = (-1).obs; // -1 يعني لا يوجد تخصص محدد

  void selectSpecialization(int index) {
    selectedIndex.value = (selectedIndex.value == index)
        ? -1
        : index; // إلغاء التحديد إذا تم الضغط على نفس التخصص
  }

  List<String> specializations = [
    'التحكيم',
    'الاستشارات القانونية',
    'القانون التجاري',
    'قانون الأسرة',
    'القانون الجنائي',
    'قانون الملكية الفكرية',
  ];

  var items = List.generate(10, (index) => 'Item $index').obs;
  var selectedIndex = 0.obs;

  void changeColor(int index) {
    selectedIndex.value = index;
  }
  //  final RxBool isFavorite = false.obs;

  isFav(Lawyer l) {
    l.isFav ? l.isFav = false : l.isFav = true;
    update();
  }

  @override
  void onInit() {
    super.onInit();
  }
}
