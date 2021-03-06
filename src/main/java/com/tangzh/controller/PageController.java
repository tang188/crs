package com.tangzh.controller;

import java.awt.image.BufferedImage;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tangzh.domain.Bill;
import com.tangzh.domain.Worker;
import com.tangzh.domain.WorkerExample;
import com.tangzh.service.ITbBillService;
import com.tangzh.service.ITbWorkerService;
import com.tangzh.utils.VerifiedCodeUtils;

@Controller
@RequestMapping("/page")
public class PageController {
	
	@RequestMapping("/login.do")
	public String login(){
		return "login";
	}
	
	@RequestMapping("/register.do")
	public String register(){
		return "register";		
	}
	
	@RequestMapping("/findPassword.do")
	public String findPassword() {
		return "findPassword";
	}
	
	@RequestMapping("/logout.do")
	public String logout(HttpServletRequest request) {
		request.getSession().removeAttribute("current_student");
		request.getSession().removeAttribute("current_admin");
		return "redirect:/page/login.do";
	}	
	
	@RequestMapping("/changeInfo.do")
	public String changeInfo() {
		return "student/changeInfo";
	}
	
	@RequestMapping("/changePassword.do")
	public String changePassword() {
		return "student/changePassword";
	}
	
	@RequestMapping("/sendRepair.do")
	public String sendRepair() {
		return "student/sendRepair";
	}
	
	@RequestMapping("/changeRepair.do")
	public String repairHistory(HttpServletRequest request) {		
		return "student/changeRepair";
	}
	
	@RequestMapping("/changeAdminInfo.do")
	public String changeAdminInfo() {
		return "admin/changeAdminInfo";
	}
	
	@RequestMapping("/changeAdminPassword.do")
	public String changeAdminPassword() {
		return "admin/changeAdminPassword";
	}
	
	@RequestMapping("/publish.do")
	public String publish() {
		return "admin/publish";
	}
	
	@RequestMapping("/changeNotice.do")
	public String changeNotice() {
		return "admin/changeNotice";
	}
	
	@RequestMapping("/changeNews.do")
	public String changeNews() {
		return "admin/changeNews";
	}
	
	@RequestMapping("/addStudent.do")
	public String addStudent() {
		return "admin/addStudent";
	}
	
	@RequestMapping("/searchStudent.do")
	public String searchStudent() {
		return "admin/searchStudent"; 
	}
	
	@RequestMapping("/changeStudent.do")
	public String changeStudent() {
		return "admin/changeStudent";
	}
	
	@RequestMapping("/addWorker.do")
	public String addWorker() {
		return "admin/addWorker";
	}
	
	@RequestMapping("/searchWorker.do")
	public String searchWorker() {
		return "admin/searchWorker";
	}
	
	@RequestMapping("/changeWorker.do")
	public String changeWorker() {
		return "admin/changeWorker";
	}
	
	@Resource(name="workerService")
	ITbWorkerService workerService;
	@Resource(name="billService")
	ITbBillService billService;
	
	@RequestMapping("/repair.do")
	public String changeBill(Model model,int bid) {
		WorkerExample example=new WorkerExample();
		try {
			List<Worker> workers=workerService.selectByExample(example);
			model.addAttribute("workers", workers);
			Bill bill=billService.selectByPrimaryKey(bid);
			model.addAttribute("bill", bill);
		} catch (Exception e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
			return "redirect:/repair/billList.do";
		}
		return "admin/changeBill";
	}
	
	@RequestMapping("/verifiedCode.do")
	public void verifiedCode(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//1. 创建验证码类
		VerifiedCodeUtils utils = new VerifiedCodeUtils();
		//2. 得到验证码图片
		BufferedImage image = utils.getImage();
		//3. 把图片上的文本保存到session中
		request.getSession().setAttribute("session_verifiedCode", utils.getText());
		//4. 把图片响应给客户端
		VerifiedCodeUtils.output(image, response.getOutputStream());
	}
}
