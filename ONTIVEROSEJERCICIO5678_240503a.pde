
/* PUNTO 5 -a */
PVector punto1, punto2;
/* PUNTO 2 - b*/
PVector punto3, punto4;
/* PUNTO 2 - c*/
PVector punto5, punto6;
/* PUNTO 4 - d*/
PVector punto7, punto8;
/* PUNTO 5 - e*/
PVector punto9, punto10;
PVector punto11, punto12;
float distancia1, distancia2, distancia3, distancia4, distancia5;

/*PUNTO 6*/
PVector inicio, fin;

/*pPUNTO 7*/
PVector vectorNormalizado, nuevaPosicion;
float velocidad = 2; // Unidades por segundo
float tiempo = 3; // Segundos

/* PUNTO 8 */
PVector v = new PVector(5, -2); // Vector v con componentes (5, -2)
PVector B = new PVector(12, -3); // Extremo B

void setup(){
  //------------- EJERCICIO 5
  size(400,400,P3D);
  
  punto1 = new PVector(10,6);
  punto2 = new PVector(-14,30);
  
  punto3 = new PVector(0,0);
  punto4 = new PVector(-12,5);
  
  punto5 = new PVector(3,10,7);
  punto6 = new PVector(8,-7,4);
  
  punto7 = new PVector(-2,-4,9);
  punto8 = new PVector(6,-7,9.5);
  
  punto9 = new PVector(4,-4);
  punto10 = new PVector(-4,4);
  
  punto11 = new PVector(-6,6);
  punto12 = new PVector(6,-6);

  
  distancia1 = sqrt(pow(punto2.x-punto1.x,2) + pow(punto2.y-punto1.y,2));
  
  distancia2 = sqrt(pow(punto4.x-punto3.x,2) + pow(punto4.y-punto3.y,2));
  
  distancia3 = sqrt(pow(punto6.x-punto6.x,2) + pow(punto6.y-punto5.y,2) + pow(punto6.z-punto5.z,2));
  
  distancia4 = sqrt(pow(punto8.x-punto7.x,2) + pow(punto8.y-punto7.y,2) + pow(punto8.z-punto7.z,2));
  
  distancia5 = sqrt(pow(punto9.x-punto11.x,2)+pow(punto9.y-punto11.y,2)+pow(punto12.x-punto10.x,2)+pow(punto12.y-punto10.y,2));
  
  println(distancia1);
  println(distancia2);
  println(distancia3);
  println(distancia4);
  println(distancia5);
  
  //----------------EJERCICIO 6
  inicio = new PVector(0,0,0);
  fin = new PVector(5,3,7);
 
 PVector vector = new PVector(fin.x - inicio.x, fin.y - inicio.y, fin.z - inicio.z);
  
  // Calcula la magnitud del vector manualmente
  float magnitud = sqrt(pow(vector.x, 2) + pow(vector.y, 2) + pow(vector.z, 2));
  println("Magnitud del vector: " + magnitud);
  
  // Normaliza el vector manualmente
  vectorNormalizado = new PVector(vector.x / magnitud, vector.y / magnitud, vector.z / magnitud);
  println("Vector normalizado: " + vectorNormalizado);
  
  //------------------------------EJERCICIO 8
    PVector A = PVector.sub(B, v); // Calcula el punto A restando el vector v a B
  println("Coordenadas de A: (" + A.x + ", " + A.y + ")");
}

void draw(){
 
  background(255);
  translate(width/2, height/2);
  
  // Dibuja los ejes cartesianos
  stroke(255, 0, 0); // Eje x en rojo
  line(-200, 0, 0, 200, 0, 0);
  stroke(0, 255, 0); // Eje y en verde
  line(0, -200, 0, 0, 200, 0);
  stroke(0, 0, 255); // Eje z en azul
  line(0, 0, -200, 0, 0, 200);
  
 stroke(0); // Color negro
 line(inicio.x, inicio.y, inicio.z, fin.x, fin.y, fin.z);
  
  
  // Dibuja el vector
  PVector vector = PVector.mult(vectorNormalizado, 100);
  stroke(0); // Color negro
  line(0, 0, 0, vector.x, vector.y, vector.z);
  
  /*PUNTO 7*/
  PVector desplazamiento = PVector.mult(vectorNormalizado, velocidad * tiempo);
  PVector nuevaPosicion = PVector.add(inicio, desplazamiento);
  
  // Dibuja la nueva posición del personaje
  fill(255, 0, 0); // Color rojo
  noStroke();
  ellipse(nuevaPosicion.x, nuevaPosicion.y, 10, 10);
  
}
