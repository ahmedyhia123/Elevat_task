import 'package:elevat_task/Features/home/presentation/data/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key, required this.product,
  });

final ProductModel product ;

  @override
  Widget build(BuildContext context) {
    return Container(
        
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: const Color.fromARGB(255, 5, 72, 128).withValues(alpha: 0.3),
          width: 2,
        ),
        color: Colors.white,
      ),
    
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                height: 120,
                decoration: BoxDecoration(
                  
                  image: DecorationImage(
                    image: NetworkImage(product.image),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withValues(alpha: 0.5),
                        spreadRadius: 4,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const Icon(Icons.favorite_border_outlined),
                ),
              ),
            ],
          ),
          SizedBox(height: 5),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 5, 72, 128),
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    children: [
                      Text(
                        "EGP ${product.price}",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 5, 72, 128),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '${product.price+100}',
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          decorationColor: Color.fromARGB(
                            255,
                            5,
                            72,
                            128,
                          ).withValues(alpha: 0.5),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(
                            255,
                            5,
                            72,
                            128,
                          ).withValues(alpha: 0.5),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text('Reviews (${product.rate})',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 5, 72, 128),
                      )),
                      Icon(Icons.star, color: Colors.amber),
                      Spacer(),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: const Color.fromARGB(255, 5, 72, 128),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
