// class Event {
class Comunicado {
  final String id;
  final String titulo;
  final String descripcion;
  final String fecha;

  Comunicado(
      {required this.id,
      required this.titulo,
      required this.descripcion,
      required this.fecha});

  factory Comunicado.fromJson(Map<String, dynamic> json) {
    return Comunicado(
      id: json['comunicado']['id'],
      titulo: json['comunicado']['titulo'],
      descripcion: json['comunicado']['descripcion'],
      fecha: json['comunicado']['fecha'],
    );
  }
}
