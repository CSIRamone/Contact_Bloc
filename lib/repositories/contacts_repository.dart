import 'dart:io';

import 'package:contact_bloc/models/contact_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ContactsRepository {
final String _baseUrl = Platform.isIOS
? 'http://192.168.1.100:3031' //'http://127.0.0.1:3031' 
: 'http://10.0.2.2:3031';

  Future<List<ContactModel>> findAll() async {
    final response = await Dio().get('$_baseUrl/contacts');

    return response.data
        ?.map<ContactModel>((contact) => ContactModel.fromMap(contact))
        .toList();
  }

  Future<void> create(ContactModel model) async =>
      Dio().post('$_baseUrl/contacts', data: model.toMap());

  Future<void> update(ContactModel model) => Dio()
      .put('$_baseUrl/contacts/${model.id}', data: model.toMap());

  Future<void> delete(ContactModel model) =>
      Dio().delete('$_baseUrl/contacts/${model.id}');
}
