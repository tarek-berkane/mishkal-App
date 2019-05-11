
import 'dart:convert';

Client clientFromJson(String str) => Client.fromMap(json.decode(str));

String clientToJson(Client data) => json.encode(data.toMap());

class Client {
    int id;
    String orginal;
    String tachkil;

    Client({
        this.id,
        this.orginal,
        this.tachkil,
    });

    factory Client.fromMap(Map<String, dynamic> json) => new Client(
        id: json["id"],
        orginal: json["orginal"],
        tachkil: json["tachkil"],
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "orginal": orginal,
        "tachkil": tachkil,
    };
}
