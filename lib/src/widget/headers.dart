

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


      path.moveTo(0, size.height * 0.2); // el lapiz se mueve 
      path.lineTo(size.width * 0.5, size.height * 0.3); // el lapiz dibuja hacia 
      path.lineTo(size.width,size.height * 0.2); // el lapiz dibuja hacia 
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




class HeaderCurva extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        child: CustomPaint(
          painter: _HeaderCurvaPainter(),
        ),
      ),
    );
  }
}


class _HeaderCurvaPainter extends CustomPainter{


  /*  lienzo */
  @override
  void paint(Canvas canvas, Size size) {


    // para meter gradiente 

      final Rect rect = new Rect.fromCircle(
        center: Offset(55.0, size.height * 0.5),
        radius: 180
      ); 


      final Gradient gradient = new LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: <Color> [
          Colors.white,
          Colors.blue[200],
          Colors.blue[500]
        ],
        stops: [ 0.35, 0.35 , 0.3 ]
        );

      /*  lapiz para dibujar y pintar */
      final paint = Paint()..shader = gradient.createShader(rect);

      // propiedades
      // paint.color = Color(0xff615AAB);  //color
      paint.style = PaintingStyle.fill; //rellenar o solo bordes
      paint.strokeWidth = 25; //grosor del lapiz


    /* path es el camino quye hara el lapiz  */
      final path = new Path();
      // dibujar con el path y el lapiz


      path.moveTo(0, size.height); // el lapiz se mueve 
      path.lineTo(0, size.height * 0.50);
      // path.lineTo(size.width,  size.height * 0.25); // el lapiz dibuja hacia 

      // (x1 = ? , y1 = ?) = eje de curvatura , x2 = ancho a llegar, y2= alto a llegar
      path.quadraticBezierTo(size.width * 0.5, size.height * 0.40, size.width, size.height * 0.5);
      // path.quadraticBezierTo(size.width * 0.75, size.height * 0.61, size.width, size.height * 0.7);

      path.lineTo(size.width, size.height);
      // path.lineTo(size.width,size.height * 0.2); // el lapiz dibuja hacia 
      // path.lineTo(size.width,0); // el lapiz dibuja hacia 

      // path.lineTo(0,0); // el lapiz dibuja hacia 
      // path.lineTo(0,size.height * 0.5); // el lapiz dibuja hacia 


      /* lo dibuja */
      canvas.drawPath(path, paint);


      
    }
  
    /*  esto para cosas pequeñas es true  */
    @override
    bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}