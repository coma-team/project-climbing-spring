package com.coma.app.view.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.coma.app.biz.member.MemberDTO;
import com.coma.app.biz.member.MemberService;

@RestController	
public class CheckController {
	
	@Autowired
	private MemberService memberService;
	
	@PostMapping("/checkId.do")
	public @ResponseBody String checkId(@RequestBody MemberDTO memberDTO) {
		System.out.println("CheckController checkId 비동기 처리 로그");
		
		//model 에 사용자 ID를 넘겨 값이 있는 지 확인 후
		memberDTO = this.memberService.selectOneSearchId(memberDTO);

		String result = "false";
		//값이 없으면 true 를 반환 합니다.		
		if(memberDTO != null) {
			result	 = "true";
		}
		
		// view 로 값을 전달 합니다.
		return result;
	}
	
	@PostMapping("/checkPassword.do")
	public @ResponseBody String checkPassword(MemberDTO memberDTO) {
		System.out.println("CheckController checkPassword 비동기 처리 로그");

		//model 에 사용자 ID를 넘겨 값이 있는 지 확인 후
		memberDTO = this.memberService.selectOneSearchIdPassword(memberDTO);
		
		String result = "false";
		//값이 없으면 true 를 반환 합니다.
		if(memberDTO != null) {
			result = "true";
		}
		// view 로 값을 전달 합니다.
		return result;
	}

}
