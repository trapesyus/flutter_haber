import 'package:flutter_haber/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> category =[];
  //1
  CategoryModel categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="İŞ";
  categoryModel.categoryName = "Business";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1523287562758-66c7fc58967f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80";
  category.add(categoryModel);
  //2
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="EĞLENCE";
  categoryModel.categoryName = "Entertainment";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1603190287605-e6ade32fa852?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
//3
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="GENEL";
  categoryModel.categoryName = "General";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1506126613408-eca07ce68773?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=731&q=80";
  category.add(categoryModel);
//4
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="SAĞLIK";
  categoryModel.categoryName = "Health";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);
//5
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="SPOR";
  categoryModel.categoryName = "Sports";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=675&q=80";
  category.add(categoryModel);

  //6
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="TEKNOLOJİ";
  categoryModel.categoryName = "Technology";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  //7
  categoryModel = new CategoryModel();
  categoryModel.categoryBaslik="BİLİM";
  categoryModel.categoryName = "Science";
  categoryModel.imageUrl =
  "https://images.unsplash.com/photo-1496065187959-7f07b8353c55?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80";
  category.add(categoryModel);

  return category;


}
