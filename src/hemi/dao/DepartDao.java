package hemi.dao;

import java.util.List;

import hemi.pojo.Depart;

public interface DepartDao {
Depart select(Depart depart);
void update(Depart depart);
List<Depart>queryAll();
}
