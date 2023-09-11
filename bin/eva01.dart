mixin Disponible {
  int disponible = 0;
}

mixin Informacion {
  String nombre = '';
  String direccion= '';
}
enum CategoriaProducto{
  Deportes,
  Hogar,
  Tecnologia
}
enum DepartamentoProducto{
  Deportes,
  Hogar,
  Tecnologia
}
enum Articulos{
  Teclado,
  Mouse,
  Monitor,
  CPU,
  Muebles,
  Sillon,
  Mesa,
  Silla,
  Balon,
  Metas,
  Conos 
}

class Tienda with Informacion {
    List<Departamento> departamentos;
    Tienda( this.departamentos);
}

class Departamento  {
    DepartamentoProducto nombre;
    List<Categoria> categorias;
    Departamento({required this.nombre, required this.categorias});
}

class Categoria{
CategoriaProducto nombre;
  List<Articulo> articulos;
  Categoria( {required this.nombre, required this.articulos});
}

class Articulo with Disponible {
    Articulos nombre;
    Articulo({required this.nombre});
}

void main(List<String> args) {
  List<Articulo> articulos = [];
  List<Articulo> articulos2 = [];
  List<Articulo> articulos4 = [];
  List<Categoria> categorias = [];
  List<Departamento> departamentos = [];

  final articulo1 = Articulo(nombre: Articulos.Teclado);
  articulo1.disponible = 10;
  final articulo2 = Articulo(nombre: Articulos.Mouse);
  articulo2.disponible = 20;
  final categoria1 = Categoria(nombre: CategoriaProducto.Tecnologia, articulos: articulos);
  categorias.add(categoria1);

  articulos.add(articulo1);
  articulos.add(articulo2);


  final articulo3 = Articulo(nombre: Articulos.Muebles);
  articulos2.add(articulo3);
  final categoria2 = Categoria(nombre: CategoriaProducto.Hogar, articulos: articulos2);
  categorias.add(categoria2);


  final articulo4 = Articulo(nombre: Articulos.Balon,);
  articulo4.disponible = 5;
  articulos.add(articulo4);
  final articulo5 = Articulo(nombre: Articulos.Conos,);
  articulo5.disponible = 2;
  articulos4.add(articulo5);
  final categoria3 = Categoria(nombre: CategoriaProducto.Deportes, articulos: articulos4);
  categorias.add(categoria3);

  final departamento1 = Departamento(nombre: DepartamentoProducto.Tecnologia,  categorias: categorias);
  departamentos.add(departamento1);

  final departamento2 = Departamento(nombre: DepartamentoProducto.Hogar,  categorias: categorias);
  departamentos.add(departamento2);

  final departamento3 = Departamento(nombre: DepartamentoProducto.Deportes, categorias: categorias);
  departamentos.add(departamento3);

  final tienda1 = Tienda( departamentos);
  tienda1.nombre = 'Shoping';
  tienda1.direccion = 'Calle 1 # 2-3';


  //---------- Imprimir datos de la tienda -----------
  print(tienda1.nombre);
  print(tienda1.direccion);
  for (Departamento departamento in tienda1.departamentos) {
    print(departamento.nombre);
    for (Categoria categoria in departamento.categorias) {
      print(categoria.nombre);
      for (Articulo articulo in categoria.articulos) {
        print(articulo.nombre);
        print(articulo.disponible);
      }
    }
  }
}