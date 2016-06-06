package hemi.dao;

import java.util.List;

import hemi.pojo.Page;
import hemi.pojo.Question;
import hemi.pojo.Sort;

public interface QuestionDao {
Question selectByid(int id);
Question selectBycode(String qcode);
List<Question> selectByDepart(int depart);
/**
 * 后台每个部门的查询方法
 * @param depart
 * @return
 */
List<Question> selectByDepart2(int depart);
List<Question> selectByDepart3(int depart);
List<Question> selectAll(Page page);
List<Question> selectByHit();
List<Question> search(String keyword);
void insert(Question question);
void update(Question question);
void delete(Question question);
// TODO 各部门回答问题排行榜
List<Sort> order();
Integer getCount();
}
