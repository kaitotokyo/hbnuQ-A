package hemi.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import hemi.dao.DepartDao;
import hemi.pojo.Depart;
import hemi.util.SqlSessionUtil;


@Controller
public class LoginController {
	@RequestMapping(value = "/login.html", method = RequestMethod.POST)
	public String login(Depart depart,HttpServletRequest req)  {
		SqlSession session =  SqlSessionUtil.getSqlSession();
		DepartDao dao = session.getMapper(DepartDao.class);
		
		if((dao.select(depart))!=null){
			depart=dao.select(depart);
			req.getSession().setAttribute("user", depart);
			session.close();
			return "back/main";
		}else{
			session.close();
			req.getSession().setAttribute("info", "登陆失败，请检查用户及账户名");
			return "redirect:/front/login.html";
		}
	}
	@RequestMapping(value="/password.html")
	public String toChangePwd(){
		return "password";
	}
	
	@RequestMapping(value="changepwd.html",method=RequestMethod.POST)
	public String  changepwd(String password,HttpServletRequest request){
		SqlSession session = SqlSessionUtil.getSqlSession();
		Depart current = (Depart) request.getSession().getAttribute("user");
		current.setPwd(password);
		DepartDao ddao = session.getMapper(DepartDao.class);
		ddao.update(current);
		session.commit();
		request.getSession().setAttribute("user", current);
		session.close();
		request.getSession().setAttribute("info", "密码修改成功");
		return "redirect:/password.html";
	}
	@RequestMapping("statement.html")
	public String  toChangestatement(){
		return "statement";
	}
	
	@RequestMapping("changestmt.html")
	public 	String  changestmt(String statement,HttpServletRequest request){
		SqlSession session = SqlSessionUtil.getSqlSession();
		Depart current = (Depart) request.getSession().getAttribute("user");
		current.setStatement(statement);
		DepartDao ddao = session.getMapper(DepartDao.class);
		ddao.update(current);
		session.commit();
		request.getSession().setAttribute("user", current);
		session.close();
		request.getSession().setAttribute("info2", "部门描述修改成功");
		return "redirect:/statement.html";
	}
}