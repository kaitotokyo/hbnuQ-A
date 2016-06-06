package hemi.controller;

import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import hemi.dao.DepartDao;
import hemi.dao.QuestionDao;
import hemi.pojo.Depart;
import hemi.pojo.Question;
import hemi.util.GetDate;
import hemi.util.SHA1;
import hemi.util.SqlSessionUtil;

@RequestMapping("question")
@Controller
public class QustionController {
	@RequestMapping("/post.html")
	public String post(Question q,HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		q.setIntime(new Timestamp(System.currentTimeMillis()));
		//加密算法
		q.setQcode(SHA1.encode(q.getName()+GetDate.getNowDate()));
		qdao.insert(q);
		sqlSession.commit();
		req.setAttribute("mes", "问题提交成功，请耐心等待<br/>您的问题查询码为："+q.getQcode());
		return "post";
	}
	@RequestMapping("/reply.html")
	public String reply(Question q,HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		Question qq= qdao.selectByid(q.getId());
		qq.setReply(q.getReply());
		qq.setRetime(new Timestamp(System.currentTimeMillis()));
		qq.setProcess(qq.getProcess()+
				" <li><em>·</em>["
				+GetDate.getNowDate()+ 
				"]"
				+ ((Depart)req.getSession().getAttribute("user")).getName()+
				" 答复了该留言</li>");
		qq.setProcess(qq.getProcess().replace("null", ""));
		qdao.update(qq);
		sqlSession.commit();
		sqlSession.close();
		return "redirect:list.html";
	}
	
	@RequestMapping("/changedepart.html")
	public String changeDepart(int id,int depart,HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		DepartDao ddao = sqlSession.getMapper(DepartDao.class);
		List<Depart> departs = ddao.queryAll();
		Depart depart2=null;
		for (Depart depart3 : departs) {
			if (depart3.getId()==depart) {
				depart2=depart3;
			}
		}
		
		Question q = qdao.selectByid(id);
		q.setProcess(q.getProcess()+
				" <li><em>·</em>["
				+GetDate.getNowDate()+ 
				"]"
				+ ((Depart)req.getSession().getAttribute("user")).getName()+
				" 将问题移动到["
				+ depart2.getName()
				+ "]</li>");
		
		q.setDepart(depart);
		qdao.update(q);
		
		sqlSession.commit();
		sqlSession.close();
		return "redirect:list.html";
	}
	@RequestMapping("/list.html")
	public String list(HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		List<Question> list= qdao.selectByDepart2(((Depart)(req.getSession().getAttribute("user"))).getId());
		sqlSession.close();
		req.setAttribute("list", list);
		return "list";
	}
	@RequestMapping("/todo.html")
	public String list2(HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		List<Question> list= qdao.selectByDepart3(((Depart)(req.getSession().getAttribute("user"))).getId());
		sqlSession.close();
		req.setAttribute("list", list);
		return "list";
	}
	@RequestMapping("/toreply/{qcode}")
	public String  toPost(@PathVariable("qcode")String qcode,HttpServletRequest req){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		Question question = qdao.selectBycode(qcode);
		
		question.setProcess(question.getProcess()+
				" <li><em>·</em>["
				+GetDate.getNowDate()+ 
				"]"
				+ ((Depart)req.getSession().getAttribute("user")).getName()+
				" 查看了该留言</li>");
		qdao.update(question);
		req.setAttribute("question", question);
		sqlSession.commit();
		sqlSession.close();
		return "reply";
	}
	
	@RequestMapping("/delete/{qcode}")
	public String delete(@PathVariable("qcode")String qcode){
		SqlSession sqlSession = SqlSessionUtil.getSqlSession();
		QuestionDao qdao = sqlSession.getMapper(QuestionDao.class);
		Question question = qdao.selectBycode(qcode);
		qdao.delete(question);
		sqlSession.commit();
		sqlSession.close();
		return "redirect:list.html";
	}
	
}
