void Dibujarcubo(float px, float py, float lado) {
  float brillo = calcularBrillo(cambiar);
  float tono = map(px, 400, width, brillo - 50, brillo + 50);
  tono = constrain(tono, 0, 255); 

  fill(tono); 
  quad(px, py, px - lado, py + lado / 2, px, py + lado, px + lado, py + lado / 2);

  fill(180);
  quad(px - lado, py + lado / 2, px - lado, py + lado * 1.5, px, py + lado * 2, px, py + lado);

  fill(0);
  quad(px + lado, py + lado / 2, px + lado, py + lado * 1.5, px, py + lado * 2, px, py + lado);
}
