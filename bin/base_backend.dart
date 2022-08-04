import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:mysql1/mysql1.dart';

void main(List<String> arguments) async {
  final conn = await MySqlConnection.connect(
    ConnectionSettings(
        host: 'localhost',
        port: 3306,
        user: 'root',
        db: 'delivery',
        password: 'root'),
  );

  await conn
      .query("INSERT INTO tb_permissoes(nome, status) VALUES ('aaaa', 'A')");

  print(await conn.query('SELECT * FROM tb_permissoes'));

  // await serve(
  //   (Request req) => Response(200,
  //       body: 'Olá Mundo', headers: {'content-type': 'application/json'}),
  //   'localhost',
  //   4040,
  // );
}
