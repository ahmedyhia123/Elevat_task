import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

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
                    image: AssetImage("assets/images/test.jpg"),
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
                  const Text(
                    "Product Name sr fhgsh hs hfdsh  fhshf sh srh r sh ",
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
                        "EGP 1,200",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromARGB(255, 5, 72, 128),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        "1,500",
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
                  SizedBox(height: 5),
                  Row(
                    children: [
                      const Text('Reviews (4.5)',
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
