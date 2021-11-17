import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:practicafirebase/models/product_dao.dart';

class FirebaseProvider{

  late FirebaseFirestore _firestore;
  late CollectionReference _productsCollection;

  FirebaseProvider(){
    _firestore = FirebaseFirestore.instance;
    _productsCollection = _firestore.collection('products');
  }

  Future<void> saveProduct(ProductDAO objPDAO) => _productsCollection.add(objPDAO.toMap());
  
  Future<void> updateProduct(ProductDAO objPDAO, String documentId) => _productsCollection.doc(documentId).update(objPDAO.toMap());
  
  Future<void> deleteProduct(String documentId) => _productsCollection.doc(documentId).delete();
  
  Stream<QuerySnapshot> getAllProducts() => _productsCollection.snapshots();


}