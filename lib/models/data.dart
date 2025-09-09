import 'package:flutter_application_1/models/category_model.dart';
import 'package:flutter_application_1/models/meal_model.dart';

// import 'model/meal.dart';
const List<Category> categories = [
  Category(id: "c1", name: "Chinese", images: "assets/images/chinese.jpg"),
  Category(id: "c2", name: "Indian", images: "assets/images/indian.jpg"),
  Category(
    id: "c3",
    name: "Oriental Meals",
    images: "assets/images/oriental.jpg",
  ),
  Category(id: "c4", name: "Pasta", images: "assets/images/pasta.jpg"),
  Category(id: "c5", name: "sandwich", images: "assets/images/sand.jpg"),
  Category(id: "c6", name: "SaLads", images: "assets/images/salad.jpg"),
  Category(id: "c7", name: "RICE DISHES", images: "assets/images/Rice.jpg"),
  Category(id: "c8", name: "DESSERT", images: "assets/images/desatr.jpg"),
];

final List<Meal> meals = [
  Meal(
    id: "m1",
    title: "LAMP CHOPS",
    imageUrl: "assets/images/lampchops.jpg",
    salary: "150",
    time: "35",
    description:
        "Fillet Steak round 275gm,topped with bron pepper sauce served with your choice of 2sides",
    categoryNumber: "c3",
  ),

  Meal(
    id: "m2",
    title: "BUTTER CHICKEN",
    imageUrl: "assets/images/butterchicken.jpg",
    salary: "90",
    time: "25",
    description:
        "A classic Indian curry featuring chicken cooked in a silky tomato and butter sauce, flavored with aromatic spices and cream.",
    categoryNumber: "c2",
  ),
  Meal(
    id: "m3",
    title: "ALFREDO",
    imageUrl: "assets/images/alfredo.jpg",
    salary: "60",
    time: "25",
    description:
        "A creamy Italian pasta dish made with fettuccine tossed in a rich sauce of butter, cream, and Parmesan cheese.",
    categoryNumber: "c4",
  ),
  Meal(
    id: "m4",
    title: "steak",
    imageUrl: "assets/images/steak.jpg",
    salary: "150",
    time: "30",
    description:
        "Juicy steak grilled to perfection, topped with a layer of melted cheese and infused with a smoky flavor that melts in your mouth.",
    categoryNumber: "c3",
  ),
  Meal(
    id: "m5",
    title: "Smoked Cheesy ",
    imageUrl: "assets/images/smoked_cheesy.jpg",
    salary: "90",
    time: "25",
    description: "----------------",
    categoryNumber: "c7",
  ),
  Meal(
    id: "m6",
    title: "Lamp Biryani",
    imageUrl: "assets/images/lamp_biryani.jpg",
    salary: "90",
    time: "30",
    description:
        "A traditional rice dish made with tender lamb, aromatic basmati rice, and a blend of rich spices, slow-cooked to perfection.",
    categoryNumber: "c2",
  ),
  Meal(
    id: "m7",
    title: "ShiSh Tawook Rice",
    imageUrl: "assets/images/shish_Tawook.jpg",
    salary: "99",
    time: "30",
    description:
        "Tender cubes of marinated chicken skewers grilled to perfection, served over fragrant rice with a blend of Middle Eastern spices.",
    categoryNumber: "c1",
  ),
  Meal(
    id: "m8",
    title: "Lamp shank",
    imageUrl: "assets/images/lamp_shank.jpg",
    salary: "130",
    time: "35",
    description:
        "Slow-cooked lamb shank that falls off the bone, simmered in rich herbs and spices, served with a flavorful sauce.",
    categoryNumber: "c3",
  ),
];
