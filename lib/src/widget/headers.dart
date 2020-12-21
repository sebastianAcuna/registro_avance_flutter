

import 'package:flutter/material.dart';


class HeaderDiagonal extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderDiagonalPainter(),
        ),
      ),
    );
  }
}


class _HeaderDiagonalPainter extends CustomPainter{


  /*  lienzo */
  @override
  void paint(Canvas canvas, Size size) {

      /*  lapiz para dibujar y pintar */
      final paint = Paint();

      // propiedades
      paint.color = Color(0xff615AAB);  //color
      paint.style = PaintingStyle.fill; //rellenar o solo bordes
      paint.strokeWidth = 5; //grosor del lapiz


    /* path es el camino quye hara el lapiz  */
      final path = new Path();
      // dibujar con el path y el lapiz


      path.moveTo(0, size.height * 0.5); // el lapiz se mueve 
      path.lineTo(size.width, size.height * 0.5); // el lapiz dibuja hacia 
      path.lineTo(size.width,0); // el lapiz dibuja hacia 
      path.lineTo(0,0); // el lapiz dibuja hacia 
      path.lineTo(0,size.height * 0.5); // el lapiz dibuja hacia 


      /* lo dibuja */
      canvas.drawPath(path, paint);

      
    }
  
    /*  esto para cosas pequeñas es true  */
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderTriangular extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderTriangularPainter(),
        ),
      ),
    );
  }
}


class _HeaderTriangularPainter extends CustomPainter{


  /*  lienzo */
  @override
  void paint(Canvas canvas, Size size) {

      /*  lapiz para dibujar y pintar */
      final paint = Paint();

      // propiedades
      paint.color = Color(0xff615AAB);  //color
      paint.style = PaintingStyle.fill; //rellenar o solo bordes
      paint.strokeWidth = 5; //grosor del lapiz


    /* path es el camino quye hara el lapiz  */
      final path = new Path();
      // dibujar con el path y el lapiz


      // path.moveTo(0, size.height * 0.5); // el lapiz se mueve 
      path.lineTo(size.width, size.height); // el lapiz dibuja hacia 
      path.lineTo(size.width,0); // el lapiz dibuja hacia 
      path.lineTo(0,0); // el lapiz dibuja hacia 
      path.lineTo(0,size.height * 0.5); // el lapiz dibuja hacia 



      //       // path.moveTo(0, size.height * 0.5); // el lapiz se mueve 
      // path.lineTo(0,size.height); // el lapiz dibuja hacia 
      // path.lineTo(size.width, size.height); // el lapiz dibuja hacia 
      // path.lineTo(0,0); // el lapiz dibuja hacia 
      // // path.lineTo(0,size.height * 0.5); // el lapiz dibuja hacia 


      /* lo dibuja */
      canvas.drawPath(path, paint);

      
    }
  
    /*  esto para cosas pequeñas es true  */
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}


class HeaderPico extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderPicoPainter(),
        ),
      ),
    );
  }
}


class _HeaderPicoPainter extends CustomPainter{


  /*  lienzo */
  @override
  void paint(Canvas canvas, Size size) {

      /*  lapiz para dibujar y pintar */
      final paint = Paint();

      // propiedades
      paint.color = Color(0xff615AAB);  //color
      paint.style = PaintingStyle.stroke; //rellenar o solo bordes
      paint.strokeWidth = 5; //grosor del lapiz


    /* path es el camino quye hara el lapiz  */
      final path = new Path();
      // dibujar con el path y el lapiz


      // path.moveTo(0, size.height * 0.5); // el lapiz se mueve 
      path.lineTo(size.width, size.height); // el lapiz dibuja hacia 
      path.lineTo(size.width,0); // el lapiz dibuja hacia 
      path.lineTo(0,0); // el lapiz dibuja hacia 
      path.lineTo(0,size.height * 0.5); // el lapiz dibuja hacia 

      /* lo dibuja */
      canvas.drawPath(path, paint);

      
    }
  
    /*  esto para cosas pequeñas es true  */
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}