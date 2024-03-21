package org.example.app.service.impl;

import org.example.app.entity.Contact;

import java.util.List;

public interface ContactService extends BaseService<Contact> {
    boolean create(Contact contact);
    List<Contact> fetchAll();
    Contact fetchById(Long id);
    boolean update(Long id, Contact contact);
    boolean delete(Long id);
}
