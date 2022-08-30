part of './cart_screen.dart';

class StoreName extends StatelessWidget {
  final String name;
  final String image;

  const StoreName({Key? key, required this.name, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 70,
      child: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          _storeNameImage(image),
          SizedBox(
            width: 10,
          ),
          _storeName(name)
        ],
      ),
    );
  }

  Text _storeName(name) {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }

  ClipRRect _storeNameImage(image) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        image,
        width: 35,
        height: 35,
      ),
    );
  }
}