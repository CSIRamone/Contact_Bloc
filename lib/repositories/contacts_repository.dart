import 'dart:developer';
import 'dart:io';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';


class ContactsRepository {
final String _baseUrl = Platform.isIOS
? 'http://192.168.100.8:3033' //'http://127.0.0.1:3031' 
: 'http://10.0.2.2:3031';

  Future<List<ContactModel>> findAll() async {
    final response = await Dio().get('http://192.168.100.8:3033/contacts');

    return response.data
        ?.map<ContactModel>((contact) => ContactModel.fromMap(contact))
        .toList();
  }

  Future<void> create(ContactModel model) async {
    log('Criando contato: ${model.toMap()}');
      Dio().post('http://192.168.100.8:3033/contacts', data: model.toMap());
  }
  Future<void> update(ContactModel model) => Dio()
      .put('$_baseUrl/contacts/${model.id}', data: model.toMap());

  Future<void> delete(ContactModel model) =>
      Dio().delete('$_baseUrl/contacts/${model.id}');
}