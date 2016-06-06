package hemi.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hemi.dao.DepartDao;
import hemi.dao.QuestionDao;
import hemi.pojo.Depart;
import hemi.pojo.Page;
import hemi.pojo.Question;
import hemi.pojo.Sort;
import hemi.util.SqlSessionUtil;

@RequestMapping("/front")
@Controller
public class FrontController {
@RequestMapping("index/{id}")
	public String toindex(@PathVariable("id")int num, HttpServletRequest request){
	SqlSession sqlSession=SqlSessionUtil.getSqlSession();
	DepartDao departDao =sqlSession.getMapper(DepartDao.class);
	List<Depart>departs= departDao.queryAll();
	QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
	Page page = new Page();
	Integer newsNum = questionDao.getCount();
	
	int pagenum=newsNum/6+1;
	request.setAttribute("pagenum", pagenum);
	if (num<=1) {
		num=1;
	}
	if(num>=pagenum){
		num=pagenum;
	}
	page.setBegin(num-1);
	page.setSize(6);
	List<Question> questions = questionDao.selectAll(page);
	List<Question> top= questionDao.selectByHit();
	request.setAttribute("currentpage", num);
	request.getSession().setAttribute("depart", departs);
	request.setAttribute("question", questions);
	request.getSession().setAttribute("top", top);
	List<Sort> sorts = questionDao.order();
	request.getSession().setAttribute("sort", sorts);
	
	sqlSession.close();
		return "index";
	}


@RequestMapping("depart/{id}")
public String todepart(HttpServletRequest request, @PathVariable("id")int departid){
	SqlSession sqlSession=SqlSessionUtil.getSqlSession();
	QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
	List<Question> questions = questionDao.selectByDepart(departid);
	request.setAttribute("question", questions);
	sqlSession.close();
	return "depart";
}
@RequestMapping("question/{qcode}")
	public String toQuestion(HttpServletRequest request, @PathVariable("qcode")String qcode){
	SqlSession sqlSession=SqlSessionUtil.getSqlSession();
	QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
	Question question = questionDao.selectBycode(qcode);
	question.setHit(question.getHit()+1);
	questionDao.update(question);
	sqlSession.commit();
	sqlSession.close();
	request.setAttribute("question", question);
	return "question";
	}

@RequestMapping("post.html")
	public String toPost(){
		return "post";
	}
@RequestMapping("login.html")
public String toLogin(){
	return "login";
}

@RequestMapping("qcode.html")
public String  queryByQcode(String qcode,HttpServletRequest req){
	SqlSession sqlSession=SqlSessionUtil.getSqlSession();
	QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
	Question vo=questionDao.selectBycode(qcode);
	System.out.println(qcode);
	sqlSession.close();
	if(vo!=null){
	req.setAttribute("question", vo);
	return "question";}
	else{
		req.setAttribute("mes", "您的查询码输入错误，请重新输入");
		return "index";
	}
}


@RequestMapping("search.html")
public String  search(String keyword,HttpServletRequest req){
	SqlSession sqlSession=SqlSessionUtil.getSqlSession();
	QuestionDao questionDao = sqlSession.getMapper(QuestionDao.class);
	keyword="%"+keyword+"%";//模糊搜索
	List<Question> vo=questionDao.search(keyword);
	sqlSession.close(); 
	req.setAttribute("question", vo);
	return "search";
}

}
