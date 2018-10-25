package org.kh.youblog.member.controller;

import org.json.simple.JSONObject;
import org.kh.youblog.member.model.service.MemberService;
import org.kh.youblog.member.model.vo.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

@Controller
@SessionAttributes("Member")
public class MemberController {

	@Autowired
	private MemberService memberservice;
	
	/*@RequestMapping(value="Memberlist.do")
    public String coding() {
        return "Memberlist";
    }*/
	
	
	
}






